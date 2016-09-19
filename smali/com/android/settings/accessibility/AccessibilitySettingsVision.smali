.class public Lcom/android/settings/accessibility/AccessibilitySettingsVision;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkSetupWizard:Z

.field private final mAccessControlObserver:Landroid/database/ContentObserver;

.field private mColorBlind:Landroid/preference/PreferenceScreen;

.field private final mColorBlindObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisableExclusiveOptionsFlag:I

.field private mDisableExclusiveOptionsMessage:Ljava/lang/String;

.field private mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mFontPreview:Landroid/preference/PreferenceScreen;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mGrayScaleDialog:Landroid/app/AlertDialog;

.field private mGreyscaleModeCheckbox:Landroid/preference/SwitchPreference;

.field private final mGreyscaleModeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHighContrastCheckbox:Landroid/preference/SwitchPreference;

.field private mHighContrastFontCheckbox:Landroid/preference/SwitchPreference;

.field private final mHighContrastFontObserver:Landroid/database/ContentObserver;

.field private mHighContrastKeyboardCheckbox:Landroid/preference/SwitchPreference;

.field private final mHighContrastKeyboardObserver:Landroid/database/ContentObserver;

.field private mLcdCurtain:Landroid/preference/SwitchPreference;

.field private final mMagnification:Landroid/database/ContentObserver;

.field private mMagnifierPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private final mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mRapidKeyInput:Landroid/preference/SwitchPreference;

.field private final mRapidKeyInputObserver:Landroid/database/ContentObserver;

.field private mScreenReaderPreference:Landroid/preference/SwitchPreference;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mShowButtonBG:Landroid/preference/SwitchPreference;

.field private mSpokenServiceAvailble:Z

.field private mStalkbackTutorial:Landroid/preference/PreferenceScreen;

.field private mTTSSettingsPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mToggleInversionPreference:Landroid/preference/SwitchPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisionCategory:Landroid/preference/PreferenceScreen;

.field private mVoiceLabel:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sInstalledServices:Ljava/util/Set;

    .line 1440
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$29;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$29;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 136
    iput v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisableExclusiveOptionsFlag:I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGrayScaleDialog:Landroid/app/AlertDialog;

    .line 160
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSpokenServiceAvailble:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    .line 169
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;

    .line 173
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 216
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 226
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 242
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInputObserver:Landroid/database/ContentObserver;

    .line 251
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnification:Landroid/database/ContentObserver;

    .line 265
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$7;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGreyscaleModeObserver:Landroid/database/ContentObserver;

    .line 278
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNegativeColorObserver:Landroid/database/ContentObserver;

    .line 291
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlindObserver:Landroid/database/ContentObserver;

    .line 304
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$10;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastFontObserver:Landroid/database/ContentObserver;

    .line 316
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$11;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardObserver:Landroid/database/ContentObserver;

    .line 326
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$12;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mPowerSavingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGreyscaleModeCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastFontCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isPowerSavingEnabled()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->setColorWeaknessMode(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateExclusiveTalkback()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisableExclusiveOptionsFlag:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mScreenReaderPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isTalkbackAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private initializeAllPreferences()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 844
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v6, 0x64

    if-lt v3, v6, :cond_a

    move v1, v4

    .line 846
    .local v1, "isKnoxUser":Z
    :goto_0
    const-string v3, "vision_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    .line 849
    const-string v3, "talkback_tutorial_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mStalkbackTutorial:Landroid/preference/PreferenceScreen;

    .line 850
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mStalkbackTutorial:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 852
    const-string v3, "lcd_curtain"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/SwitchPreference;

    .line 853
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 855
    const-string v3, "rapid_key_input"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/SwitchPreference;

    .line 856
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 858
    const-string v3, "toggle_speak_password_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    .line 859
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 861
    const-string v3, "toggle_screen_reader_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mScreenReaderPreference:Landroid/preference/SwitchPreference;

    .line 862
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mScreenReaderPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 864
    const-string v3, "voice_label"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVoiceLabel:Landroid/preference/PreferenceScreen;

    .line 865
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVoiceLabel:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 867
    const-string v3, "font_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontPreview:Landroid/preference/PreferenceScreen;

    .line 868
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontPreview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 869
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontPreview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 871
    const-string v3, "screen_magnification_preference_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 872
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 873
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 875
    const-string v3, "magnifier_preference_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 876
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 878
    const-string v3, "greyscale_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGreyscaleModeCheckbox:Landroid/preference/SwitchPreference;

    .line 879
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGreyscaleModeCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 881
    const-string v3, "high_contrast"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;

    .line 882
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 884
    const-string v3, "toggle_inversion_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    .line 885
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 887
    const-string v3, "daltonizer_preference_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 888
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 889
    const-string v3, "color_blind"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;

    .line 890
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 892
    const-string v3, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 893
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 894
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 896
    const-string v3, "tts_settings_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mTTSSettingsPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 898
    const-string v3, "show_button_bg"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mShowButtonBG:Landroid/preference/SwitchPreference;

    .line 899
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mShowButtonBG:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 901
    const-string v3, "toggle_high_font_contrast_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastFontCheckbox:Landroid/preference/SwitchPreference;

    .line 902
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastFontCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 904
    const-string v3, "toggle_high_keyboard_contrast_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardCheckbox:Landroid/preference/SwitchPreference;

    .line 905
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 906
    if-eqz v1, :cond_0

    .line 907
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontPreview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "com.samsung.android.app.talkback"

    invoke-static {v3, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 911
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mStalkbackTutorial:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 914
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "com.sec.feature.overlaymagnifier"

    invoke-static {v3, v6}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-eqz v3, :cond_3

    .line 916
    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 919
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isTalkbackAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 920
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 921
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 922
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 925
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "com.samsung.android.app.screenreader"

    invoke-static {v3, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 926
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mScreenReaderPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 929
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "android.hardware.nfc"

    invoke-static {v3, v6}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 931
    :cond_6
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVoiceLabel:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 945
    :cond_7
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 946
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 947
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 949
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 950
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_8

    .line 951
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 955
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "current_sec_active_themepackage"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "themePackageName":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 958
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mShowButtonBG:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 962
    :goto_1
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilityUtils;->isProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 963
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mTTSSettingsPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 964
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 965
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVoiceLabel:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 967
    :cond_9
    return-void

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "isKnoxUser":Z
    .end local v2    # "themePackageName":Ljava/lang/String;
    :cond_a
    move v1, v5

    .line 844
    goto/16 :goto_0

    .line 960
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v1    # "isKnoxUser":Z
    .restart local v2    # "themePackageName":Ljava/lang/String;
    :cond_b
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mShowButtonBG:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private isPowerSavingEnabled()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1153
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "powersaving_switch"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "blackgrey_powersaving_mode"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v0, v3

    .line 1155
    .local v0, "powerSavingModeCheck":Z
    :goto_0
    if-ne v0, v3, :cond_0

    .line 1156
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "color_blind"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1157
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "high_contrast"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1159
    :cond_0
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1160
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1161
    return-void

    .end local v0    # "powerSavingModeCheck":Z
    :cond_1
    move v0, v2

    .line 1153
    goto :goto_0

    .restart local v0    # "powerSavingModeCheck":Z
    :cond_2
    move v1, v3

    .line 1159
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1160
    goto :goto_2
.end method

.method private static isTalkbackAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 970
    const-string v0, "com.samsung.android.app.talkback"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.marvin.talkback"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    const/4 v0, 0x0

    .line 974
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 1418
    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sInstalledServices:Ljava/util/Set;

    .line 1419
    .local v4, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1421
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 1423
    .local v3, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 1438
    :cond_0
    return-void

    .line 1427
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1428
    .local v2, "installedServiceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1429
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1430
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    .local v1, "installedService":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1434
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 1435
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSpokenServiceAvailble:Z

    .line 1428
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 715
    const-string v0, "AccessibilitySettings_Vision"

    const-string v1, "register ContentObserver"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 719
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "greyscale_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGreyscaleModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 723
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_text_contrast_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaving_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 733
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rapid_key_input_menu_checked"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInputObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 735
    return-void
.end method

.method private setColorWeaknessMode(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 423
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 425
    .local v1, "powerManager":Landroid/os/PowerManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setColorWeaknessMode"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 439
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 429
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 432
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 738
    const-string v0, "AccessibilitySettings_Vision"

    const-string v1, "unregister ContentObserver"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 742
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGreyscaleModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 744
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInputObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 749
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateDefaultPreferences()V

    .line 408
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateServicesPreferences()V

    .line 410
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateExclusiveTalkback()V

    .line 411
    return-void
.end method

.method private updateDefaultPreferences()V
    .locals 10

    .prologue
    const v9, 0x7f0e0e96

    const v8, 0x7f0e0e95

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1066
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "lcd_curtain"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1069
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "rapid_key_input_menu_checked"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "speak_password"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    .line 1074
    .local v0, "speakPasswordEnabled":Z
    :goto_2
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 1075
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1076
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 1077
    .local v1, "value":Z
    if-eqz v1, :cond_6

    .line 1078
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1084
    .end local v1    # "value":Z
    :cond_0
    :goto_3
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mScreenReaderPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1088
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateFontPreviewSummary()V

    .line 1090
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 1092
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1098
    :goto_5
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGreyscaleModeCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "greyscale_mode"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1101
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "high_contrast"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1104
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "accessibility_display_inversion_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_b

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1107
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "accessibility_display_daltonizer_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    .line 1109
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1113
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "color_blind"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1115
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1119
    :goto_a
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastFontCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "high_text_contrast_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_b
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1121
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string v7, "high_contrast_keyboard"

    invoke-static {v5, v6, v7}, Lcom/android/settings/accessibility/AccessibilityUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1123
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1124
    iget-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSpokenServiceAvailble:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isTalkbackAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1125
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1131
    :cond_2
    :goto_c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    .line 1133
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1138
    :goto_d
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mShowButtonBG:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_button_background"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_11

    move v2, v3

    :goto_e
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1140
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "access_control_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_12

    .line 1142
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1143
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1149
    :goto_f
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isPowerSavingEnabled()V

    .line 1150
    return-void

    .end local v0    # "speakPasswordEnabled":Z
    :cond_3
    move v2, v4

    .line 1066
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 1069
    goto/16 :goto_1

    :cond_5
    move v0, v4

    .line 1072
    goto/16 :goto_2

    .line 1080
    .restart local v0    # "speakPasswordEnabled":Z
    .restart local v1    # "value":Z
    :cond_6
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .end local v1    # "value":Z
    :cond_7
    move v2, v4

    .line 1084
    goto/16 :goto_4

    .line 1094
    :cond_8
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_5

    :cond_9
    move v2, v4

    .line 1098
    goto/16 :goto_6

    :cond_a
    move v2, v4

    .line 1101
    goto/16 :goto_7

    :cond_b
    move v2, v4

    .line 1104
    goto/16 :goto_8

    .line 1111
    :cond_c
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_9

    .line 1117
    :cond_d
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_a

    :cond_e
    move v2, v4

    .line 1119
    goto/16 :goto_b

    .line 1128
    :cond_f
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_c

    .line 1135
    :cond_10
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_d

    :cond_11
    move v2, v4

    .line 1138
    goto :goto_e

    .line 1145
    :cond_12
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1146
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_f
.end method

.method private updateExclusiveTalkback()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 633
    const-string v3, "AccessibilitySettings_Vision"

    const-string v4, "TalkbackOnChagne "

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 635
    .local v0, "settingValue":Z
    const-string v3, "AccessibilitySettings_Vision"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings.Secure.ACCESSIBILITY_ENABLED,  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_use"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rapid_key_input_menu_checked"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    const-string v3, "AccessibilitySettings_Vision"

    const-string v4, "updateExclusiveTalkback : Rapid key input on"

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rapid_key_input"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 643
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 644
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 652
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mStalkbackTutorial:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 653
    return-void

    .line 646
    :cond_1
    const-string v3, "AccessibilitySettings_Vision"

    const-string v4, "updateExclusiveTalkback : Rapid key input off"

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rapid_key_input"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 648
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 649
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 650
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 652
    goto :goto_1
.end method

.method private updateFontPreviewSummary()V
    .locals 8

    .prologue
    const v7, 0x7f0e09ab

    const v6, 0x7f0e09aa

    const v5, 0x7f0e09b1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 656
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontPreview:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v0

    .line 658
    .local v0, "mSelectedFontSize":I
    const-string v1, ""

    .line 660
    .local v1, "returnSuammry":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    packed-switch v0, :pswitch_data_0

    .line 710
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontPreview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 712
    .end local v0    # "mSelectedFontSize":I
    .end local v1    # "returnSuammry":Ljava/lang/String;
    :cond_0
    return-void

    .line 663
    .restart local v0    # "mSelectedFontSize":I
    .restart local v1    # "returnSuammry":Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "returnSuammry":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 664
    .restart local v1    # "returnSuammry":Ljava/lang/String;
    goto :goto_0

    .line 666
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e166e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "returnSuammry":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 667
    .restart local v1    # "returnSuammry":Ljava/lang/String;
    goto :goto_0

    .line 669
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "returnSuammry":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "returnSuammry":Ljava/lang/String;
    goto :goto_0

    .line 673
    :cond_1
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 675
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e09ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "returnSuammry":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 676
    .restart local v1    # "returnSuammry":Ljava/lang/String;
    goto :goto_0

    .line 678
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e09ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "returnSuammry":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 679
    .restart local v1    # "returnSuammry":Ljava/lang/String;
    goto :goto_0

    .line 681
    :pswitch_5
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "returnSuammry":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 682
    .restart local v1    # "returnSuammry":Ljava/lang/String;
    goto :goto_0

    .line 684
    :pswitch_6
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e09b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "returnSuammry":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 685
    .restart local v1    # "returnSuammry":Ljava/lang/String;
    goto :goto_0

    .line 687
    :pswitch_7
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "returnSuammry":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 688
    .restart local v1    # "returnSuammry":Ljava/lang/String;
    goto :goto_0

    .line 690
    :pswitch_8
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e09ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "returnSuammry":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 691
    .restart local v1    # "returnSuammry":Ljava/lang/String;
    goto/16 :goto_0

    .line 693
    :pswitch_9
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e09a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "returnSuammry":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 694
    .restart local v1    # "returnSuammry":Ljava/lang/String;
    goto/16 :goto_0

    .line 696
    :pswitch_a
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 697
    goto/16 :goto_0

    .line 699
    :pswitch_b
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 700
    goto/16 :goto_0

    .line 702
    :pswitch_c
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 703
    goto/16 :goto_0

    .line 705
    :pswitch_d
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 673
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private updateServicesPreferences()V
    .locals 23

    .prologue
    .line 983
    const/4 v3, 0x0

    .line 984
    .local v3, "AccessibilityApplicationKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    .line 986
    .local v6, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v14

    .line 988
    .local v14, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    .line 990
    .local v10, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "accessibility_enabled"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/4 v5, 0x1

    .line 993
    .local v5, "accessibilityEnabled":Z
    :goto_0
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "count":I
    :goto_1
    if-ge v12, v8, :cond_0

    .line 994
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 995
    .local v13, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v13, :cond_2

    .line 1061
    .end local v13    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    return-void

    .line 990
    .end local v5    # "accessibilityEnabled":Z
    .end local v8    # "count":I
    .end local v12    # "i":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 998
    .restart local v5    # "accessibilityEnabled":Z
    .restart local v8    # "count":I
    .restart local v12    # "i":I
    .restart local v13    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 999
    .local v15, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1001
    .local v19, "title":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 1002
    .local v17, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 1005
    invoke-virtual {v15, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 1006
    const-string v20, "AccessibilitySettings_Vision"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AccessibilityApplicationKey : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 1009
    if-eqz v5, :cond_7

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v16, 0x1

    .line 1010
    .local v16, "serviceEnabled":Z
    :goto_2
    const-string v20, "AccessibilitySettings_Vision"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "title is : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " serviceEnabled : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    if-eqz v16, :cond_8

    .line 1013
    const v20, 0x7f0e0e95

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1018
    :goto_3
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 1019
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 1020
    const-class v20, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 1021
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 1023
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 1024
    .local v11, "extras":Landroid/os/Bundle;
    const-string v20, "preference_key"

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string v20, "checked"

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1026
    const-string v20, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v9

    .line 1029
    .local v9, "description":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1030
    const v20, 0x7f0e0a72

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1032
    :cond_3
    const-string v20, "summary"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v18

    .line 1035
    .local v18, "settingsClassName":Ljava/lang/String;
    const-string v20, "AccessibilitySettings_Vision"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "menu is : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Package name is : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1037
    const-string v20, "settings_title"

    const v21, 0x7f0e093f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v20, "settings_component_name"

    new-instance v21, Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_4
    const-string v20, "component_name"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1046
    invoke-virtual {v13}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "com.samsung.android.app.talkback"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1048
    .local v4, "AccessibilityApplicationPreference":Landroid/preference/Preference;
    if-eqz v4, :cond_5

    .line 1049
    const-string v20, "AccessibilitySettings_Vision"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Talkback is already added, so remove this menu, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1052
    :cond_5
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1054
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1055
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 993
    .end local v4    # "AccessibilityApplicationPreference":Landroid/preference/Preference;
    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1009
    .end local v9    # "description":Ljava/lang/String;
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v16    # "serviceEnabled":Z
    .end local v18    # "settingsClassName":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1015
    .restart local v16    # "serviceEnabled":Z
    :cond_8
    const v20, 0x7f0e0e96

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1058
    .restart local v9    # "description":Ljava/lang/String;
    .restart local v11    # "extras":Landroid/os/Bundle;
    .restart local v18    # "settingsClassName":Ljava/lang/String;
    :cond_9
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    goto :goto_4
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1584
    const/16 v0, 0x12e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 387
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 616
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 617
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x6b5

    if-ne p1, v2, :cond_0

    .line 618
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.ACCESSIBILITY_COLORBLIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "colorChipReportIntent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 622
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v0    # "colorChipReportIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 624
    .restart local v0    # "colorChipReportIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 625
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 342
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessibilitySettings_Vision"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    .line 348
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->addPreferencesFromResource(I)V

    .line 349
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->initializeAllPreferences()V

    .line 353
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->loadInstalledServices()V

    .line 354
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateAllPreferences()V

    .line 355
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .param p1, "dialogId"    # I

    .prologue
    const/4 v13, 0x2

    const v12, 0x7f0e09c1

    const/high16 v11, 0x1040000

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1166
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1167
    const/4 v6, 0x0

    .line 1413
    :goto_0
    return-object v6

    .line 1172
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1413
    :pswitch_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1174
    :pswitch_1
    const v6, 0x7f0e09fd

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f0e09a5

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1176
    .local v5, "negativecolors_use_popup_msg":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsVision$16;

    invoke-direct {v8, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$16;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsVision$15;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$15;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v11, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsVision$14;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$14;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .line 1212
    .end local v5    # "negativecolors_use_popup_msg":Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1214
    const v6, 0x7f0e0911

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1215
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0972

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1217
    .local v3, "message":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0e1271

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0e0a30

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0e11a1

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1224
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0e0916

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1237
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsVision$19;

    invoke-direct {v8, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$19;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsVision$18;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$18;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v11, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsVision$17;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$17;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 1227
    .end local v3    # "message":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1228
    const v6, 0x7f0e0911

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1229
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0972

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1231
    .restart local v3    # "message":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0e0916

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1233
    goto :goto_1

    .line 1234
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    const v6, 0x7f0e09fd

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f0e0911

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f0e1271

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x7f0e1271

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/String;
    goto/16 :goto_1

    .line 1303
    .end local v3    # "message":Ljava/lang/String;
    :pswitch_3
    const v6, 0x7f0e09fd

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f0e0a57

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "greyscale_mode_use_popup_msg":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;

    invoke-direct {v8, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsVision$21;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$21;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v11, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsVision$20;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$20;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGrayScaleDialog:Landroid/app/AlertDialog;

    .line 1338
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGrayScaleDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1340
    .end local v0    # "greyscale_mode_use_popup_msg":Ljava/lang/String;
    :pswitch_4
    const/4 v2, 0x0

    .line 1341
    .local v2, "mTitle":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1342
    .local v1, "mMessage":Ljava/lang/CharSequence;
    const v6, 0x7f0e1154

    new-array v7, v9, [Ljava/lang/Object;

    const v8, 0x7f0e092f

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1343
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisableExclusiveOptionsMessage:Ljava/lang/String;

    .line 1344
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e090a

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;

    invoke-direct {v8, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v11, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsVision$23;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$23;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 1376
    .end local v1    # "mMessage":Ljava/lang/CharSequence;
    .end local v2    # "mTitle":Ljava/lang/CharSequence;
    :pswitch_5
    const v6, 0x7f0e09c8

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1377
    .restart local v1    # "mMessage":Ljava/lang/CharSequence;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e1130

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsVision$28;

    invoke-direct {v8, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$28;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsVision$27;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$27;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v11, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsVision$26;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$26;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 1172
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 416
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->unregisterContentObserver()V

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 419
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 420
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 443
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 444
    .local v9, "value":Z
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 445
    if-eqz v9, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "color_blind"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 447
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    .line 448
    const/4 v10, 0x0

    .line 610
    :goto_0
    return v10

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "high_contrast"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.android.settings"

    const-string v12, "NEGA"

    const-string v13, "Accessibility settings"

    invoke-static {v10, v11, v12, v13}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v10, "accessibility"

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 454
    .local v8, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->setColorWeaknessMode(Z)V

    .line 455
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGreyscaleModeCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 456
    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    .line 471
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 458
    :cond_1
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_1

    .line 462
    .end local v8    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "high_contrast"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    const-string v10, "accessibility"

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 464
    .restart local v8    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->setColorWeaknessMode(Z)V

    .line 465
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGreyscaleModeCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 466
    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_1

    .line 468
    :cond_3
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_1

    .line 472
    .end local v8    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_4
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastFontCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 473
    const-string v10, "AccessibilitySettings_Vision"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mHighContrastFont : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "high_text_contrast_enabled"

    if-eqz v9, :cond_6

    const/4 v10, 0x1

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    if-eqz v9, :cond_5

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.android.settings"

    const-string v12, "HCFT"

    invoke-static {v10, v11, v12}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_5
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 474
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 478
    :cond_7
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastKeyboardCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 479
    const-string v10, "AccessibilitySettings_Vision"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mHighContrastKeyboard : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    if-eqz v9, :cond_9

    const-string v5, "1"

    .line 481
    .local v5, "isEnabled":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string v12, "high_contrast_keyboard"

    invoke-static {v10, v11, v12, v5}, Lcom/android/settings/accessibility/AccessibilityUtils;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    if-eqz v9, :cond_8

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.android.settings"

    const-string v12, "HCKB"

    invoke-static {v10, v11, v12}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 480
    .end local v5    # "isEnabled":Ljava/lang/String;
    :cond_9
    const-string v5, "0"

    goto :goto_3

    .line 485
    :cond_a
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGreyscaleModeCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 486
    if-eqz v9, :cond_d

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "color_blind"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 488
    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    .line 489
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 491
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "greyscale_mode"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.android.settings"

    const-string v12, "GREY"

    const-string v13, "Accessibility settings"

    invoke-static {v10, v11, v12, v13}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v10, "accessibility"

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 494
    .restart local v8    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->setColorWeaknessMode(Z)V

    .line 495
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 496
    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    .line 511
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 498
    :cond_c
    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_4

    .line 502
    .end local v8    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "greyscale_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    const-string v10, "accessibility"

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 504
    .restart local v8    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->setColorWeaknessMode(Z)V

    .line 505
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 506
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_4

    .line 508
    :cond_e
    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_4

    .line 512
    .end local v8    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_f
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 513
    if-eqz v9, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.android.settings"

    const-string v12, "DARK"

    invoke-static {v10, v11, v12}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lcd_curtain"

    if-eqz v9, :cond_11

    const/4 v10, 0x1

    :goto_5
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v10

    goto/16 :goto_0

    :cond_11
    const/4 v10, 0x0

    goto :goto_5

    .line 515
    :cond_12
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 516
    if-eqz v9, :cond_14

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 518
    const-string v10, "AccessibilitySettings_Vision"

    const-string v11, "updateExclusiveTalkback : Rapid key input on"

    invoke-static {v10, v11}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "rapid_key_input"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "rapid_key_input_menu_checked"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 527
    :goto_6
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 523
    :cond_14
    const-string v10, "AccessibilitySettings_Vision"

    const-string v11, "updateExclusiveTalkback : Rapid key input off"

    invoke-static {v10, v11}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "rapid_key_input"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "rapid_key_input_menu_checked"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 528
    :cond_15
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "speak_password"

    if-eqz v9, :cond_16

    const/4 v10, 0x1

    :goto_7
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v10

    goto/16 :goto_0

    :cond_16
    const/4 v10, 0x0

    goto :goto_7

    .line 530
    :cond_17
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mScreenReaderPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/accessibility/AccessibilityUtils;->isScreenReaderExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    .line 532
    .local v2, "bundle_data":Landroid/os/Bundle;
    const-string v10, "is_enabled"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 533
    .local v7, "is_enabled":Z
    const-string v10, "dialog_content"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisableExclusiveOptionsMessage:Ljava/lang/String;

    .line 534
    const-string v10, "option_flag"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisableExclusiveOptionsFlag:I

    .line 535
    if-eqz v9, :cond_18

    if-eqz v7, :cond_18

    .line 536
    const/4 v10, 0x7

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    .line 537
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 539
    :cond_18
    if-eqz v9, :cond_19

    .line 540
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e092e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 543
    :cond_19
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-static {v10, v9}, Lcom/android/settings/accessibility/AccessibilityUtils;->turnOnOffScreenReader(Landroid/content/Context;Z)V

    .line 545
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 546
    .end local v2    # "bundle_data":Landroid/os/Bundle;
    .end local v7    # "is_enabled":Z
    :cond_1a
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, "bAirFeatureEnabled":Z
    if-eqz v9, :cond_24

    .line 549
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_view_master_onoff"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1c

    .line 551
    const/4 v1, 0x1

    .line 568
    :cond_1b
    :goto_8
    const/4 v10, 0x1

    if-ne v1, v10, :cond_23

    .line 569
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    .line 578
    :goto_9
    const-string v11, "AccessibilitySettings_Vision"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED Use : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v9, :cond_25

    const/4 v10, 0x1

    :goto_a
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 552
    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1d

    .line 553
    const/4 v1, 0x1

    goto :goto_8

    .line 554
    :cond_1d
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_writing_buddy"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1e

    .line 556
    const/4 v1, 0x1

    goto :goto_8

    .line 557
    :cond_1e
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_20

    :cond_1f
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 560
    :cond_20
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_21

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b

    .line 562
    :cond_21
    const/4 v1, 0x1

    goto/16 :goto_8

    .line 564
    :cond_22
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    const-string v11, "com.sec.feature.overlaymagnifier"

    invoke-static {v10, v11}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_magnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b

    .line 566
    const/4 v1, 0x1

    goto/16 :goto_8

    .line 571
    :cond_23
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_display_magnification_enabled"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 572
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v11, 0x7f0e0e95

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_9

    .line 575
    :cond_24
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_display_magnification_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v11, 0x7f0e0e96

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_9

    .line 578
    :cond_25
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 580
    .end local v1    # "bAirFeatureEnabled":Z
    :cond_26
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "finger_magnifier"

    if-eqz v9, :cond_27

    const/4 v10, 0x1

    :goto_b
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 581
    :cond_27
    const/4 v10, 0x0

    goto :goto_b

    .line 583
    :cond_28
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_display_inversion_enabled"

    if-eqz v9, :cond_29

    const/4 v10, 0x1

    :goto_c
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 584
    :cond_29
    const/4 v10, 0x0

    goto :goto_c

    .line 588
    :cond_2a
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "checked"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enable_accessibility_global_gesture_enabled"

    if-eqz v9, :cond_2b

    const/4 v10, 0x1

    :goto_d
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_2c

    const v10, 0x7f0e0e95

    :goto_e
    invoke-virtual {v11, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 592
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 590
    :cond_2b
    const/4 v10, 0x0

    goto :goto_d

    .line 591
    :cond_2c
    const v10, 0x7f0e0e96

    goto :goto_e

    .line 593
    :cond_2d
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mShowButtonBG:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "show_button_background"

    if-eqz v9, :cond_2f

    const/4 v10, 0x1

    :goto_f
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 596
    if-eqz v9, :cond_30

    const/4 v6, 0x1

    .line 597
    .local v6, "isShowButtonEnabled":I
    :goto_10
    :try_start_0
    const-string v10, "AccessibilitySettings_Vision"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mShowButtonBG : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 599
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 600
    .local v3, "config":Landroid/content/res/Configuration;
    iput v6, v3, Landroid/content/res/Configuration;->showButtonBackground:I

    .line 601
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 602
    if-eqz v9, :cond_2e

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.android.settings"

    const-string v12, "SBSH"

    invoke-static {v10, v11, v12}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v3    # "config":Landroid/content/res/Configuration;
    :cond_2e
    :goto_11
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 594
    .end local v6    # "isShowButtonEnabled":I
    :cond_2f
    const/4 v10, 0x0

    goto :goto_f

    .line 596
    :cond_30
    const/4 v6, 0x0

    goto :goto_10

    .line 604
    .restart local v6    # "isShowButtonEnabled":I
    :catch_0
    move-exception v4

    .line 606
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11

    .line 610
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "isShowButtonEnabled":I
    :cond_31
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1576
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1579
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v8, 0x7f0e0913

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 753
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontPreview:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 755
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 756
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.settings.FontPreviewTablet"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    .local v2, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_0

    .line 762
    :try_start_0
    const-string v5, "isAccessibilitySettingsVision"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 763
    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return v4

    .line 758
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.settings.FontPreview"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 769
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mStalkbackTutorial:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 770
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 771
    .restart local v2    # "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 773
    :try_start_1
    const-string v5, "com.samsung.android.app.talkback"

    const-string v6, "com.samsung.android.app.talkback.TalkBackTutorialPreferencesActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 775
    const/high16 v5, 0x4000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 777
    :catch_1
    move-exception v0

    .line 778
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 782
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVoiceLabel:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 783
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.android.app.voicenote"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 784
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    goto :goto_1

    .line 786
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v5, "voicenote.intent.action.accessibility"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 787
    .restart local v2    # "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 789
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings"

    const-string v7, "VOLA"

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const/high16 v5, 0x4000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 791
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 792
    :catch_2
    move-exception v0

    .line 793
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 798
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 799
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 800
    .local v1, "extras":Landroid/os/Bundle;
    const-string v6, "title"

    const v7, 0x7f0e091e

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v6, "summary"

    const v7, 0x7f0e0921

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v6, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enable_accessibility_global_gesture_enabled"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_7

    :goto_2
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 839
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_6
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_1

    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_7
    move v4, v5

    .line 804
    goto :goto_2

    .line 806
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_8
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 807
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 808
    .restart local v1    # "extras":Landroid/os/Bundle;
    const-string v6, "title"

    const v7, 0x7f0e0911

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 811
    :cond_9
    const-string v6, "summary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0e0915

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :goto_4
    const-string v6, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_display_magnification_enabled"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_b

    :goto_5
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 814
    :cond_a
    const-string v6, "summary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0e0914

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move v4, v5

    .line 817
    goto :goto_5

    .line 819
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_c
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 820
    const-string v5, "persist.sys.setupwizard"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, "setupWizardStage":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    if-nez v5, :cond_d

    if-eqz v3, :cond_d

    const-string v5, "FINISH"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 822
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;

    const-string v5, "com.android.settings.accessibility.colorblind.ColorChipReport"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 824
    :cond_d
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .restart local v2    # "intent":Landroid/content/Intent;
    if-eqz v2, :cond_6

    .line 826
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.colorblind"

    const-string v7, "com.samsung.android.app.colorblind.ColorChipReport"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 827
    const-string v5, "toStartActivity"

    const-string v6, "fromSetting"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    iget-boolean v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    if-ne v5, v4, :cond_e

    .line 829
    const-string v5, "firstRun"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 832
    :cond_e
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 833
    :catch_3
    move-exception v0

    .line 834
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_blind"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 393
    .local v0, "colorBlindEnabled":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->loadInstalledServices()V

    .line 394
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateAllPreferences()V

    .line 395
    if-nez v0, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGrayScaleDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGrayScaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGrayScaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 398
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGrayScaleDialog:Landroid/app/AlertDialog;

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 402
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->registerContentObserver()V

    .line 404
    return-void

    .end local v0    # "colorBlindEnabled":Z
    :cond_1
    move v0, v1

    .line 392
    goto :goto_0
.end method
