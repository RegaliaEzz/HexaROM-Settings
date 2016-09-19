.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$ValidationTask;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# static fields
.field private static emergencyCallStatus:Z

.field private static mCountryCode:Ljava/lang/String;

.field private static mMaxFailedAttempts:I

.field private static mPasswordMaxLength:I

.field private static mSalesCode:Ljava/lang/String;

.field private static mSavedPassword:Ljava/lang/String;

.field private static mfailedAttemptCounts:Ljava/lang/Integer;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCooldown:Z

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mEncrypt:Z

.field private mEncryptionGoneBad:I

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private mFieldLayout:Landroid/widget/LinearLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mKeypressSoundCountup:I

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field protected mNotificationCountdown:I

.field mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressBarLayout:Landroid/widget/ProgressBar;

.field protected mReleaseWakeLockCountdown:I

.field private mResetButton:Landroid/widget/Button;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field mTelephony:Landroid/telephony/TelephonyManager;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWarningText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    sput v1, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeper;->mfailedAttemptCounts:Ljava/lang/Integer;

    .line 178
    const-string v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 179
    sput-boolean v1, Lcom/android/settings/CryptKeeper;->emergencyCallStatus:Z

    .line 190
    const-string v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    .line 191
    const-string v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->mCountryCode:Ljava/lang/String;

    .line 206
    sput v1, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 150
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 156
    iput v2, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 158
    iput v2, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 159
    const v0, 0x7f0e0c12

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    .line 180
    iput v2, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    .line 194
    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    .line 195
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    .line 196
    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    .line 197
    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 198
    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    .line 199
    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    .line 200
    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    .line 220
    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    .line 224
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 237
    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 481
    new-instance v0, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 698
    new-instance v0, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 712
    new-instance v0, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1126
    new-instance v0, Lcom/android/settings/CryptKeeper$8;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/settings/CryptKeeper;->mfailedAttemptCounts:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 110
    sput-object p0, Lcom/android/settings/CryptKeeper;->mfailedAttemptCounts:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/CryptKeeper;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/CryptKeeper;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/CryptKeeper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/CryptKeeper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 110
    sput-object p0, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->wipeStorage()V

    return-void
.end method

.method private beginAttempt()V
    .locals 3

    .prologue
    .line 331
    const v1, 0x7f0d013f

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 332
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0e0c18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 334
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :cond_1
    return-void
.end method

.method private cooldown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1098
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1101
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_1

    .line 1102
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 1105
    :cond_1
    const v1, 0x7f0d013f

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1106
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0e024b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1107
    return-void
.end method

.method private delayAudioNotification()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1469
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 1473
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    .line 1474
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1475
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1477
    return-void
.end method

.method private dipToPixel(I)I
    .locals 3
    .param p1, "dip"    # I

    .prologue
    .line 1516
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1517
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static disableCryptKeeperComponent(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1507
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1508
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1509
    .local v0, "name":Landroid/content/ComponentName;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1512
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 5

    .prologue
    const/16 v4, 0xb4

    .line 900
    const-string v2, "CryptKeeper"

    const-string v3, "Encryption progress screen initializing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 902
    const-string v2, "CryptKeeper"

    const-string v3, "Acquiring wakelock."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 904
    .local v1, "pm":Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "CryptKeeper"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 905
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 909
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v2, 0x7f0d014b

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    .line 910
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    .line 911
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 912
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 913
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 914
    .local v0, "lparams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 915
    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 916
    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 917
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    .end local v0    # "lparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 928
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    .line 929
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 4
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    .line 1122
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    .line 1123
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1124
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 1329
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1330
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1331
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1333
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 1462
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1458
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 14
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 345
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_0

    .line 346
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 347
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 348
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x5dc

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    :cond_0
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v8, :cond_1

    .line 353
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 356
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    if-nez v8, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_3

    .line 358
    iput-boolean v12, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 361
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    .line 412
    :cond_2
    :goto_0
    return-void

    .line 363
    :cond_3
    const v8, 0x7f0d013f

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 367
    .local v6, "status":Landroid/widget/TextView;
    const v8, 0x7f0d0146

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    .line 368
    sget v8, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int v3, v8, v9

    .line 370
    .local v3, "remainingAttempts":I
    const/16 v8, 0xa

    if-ge v3, v8, :cond_5

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 372
    .local v4, "res":Landroid/content/res/Resources;
    const v8, 0x7f0e024d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "warning":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    const v9, 0x7f0e024c

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 376
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v7    # "warning":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_4

    .line 396
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 397
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 401
    :cond_4
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 402
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 403
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 405
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v8, v13}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 407
    invoke-virtual {p0, v13}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    goto :goto_0

    .line 378
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    const/4 v2, 0x0

    .line 380
    .local v2, "passwordType":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v5

    .line 381
    .local v5, "service":Landroid/os/storage/IMountService;
    invoke-interface {v5}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 386
    .end local v5    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v8, 0x3

    if-ne v2, v8, :cond_6

    .line 387
    const v8, 0x7f0e0c17

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error calling mount service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v8, 0x2

    if-ne v2, v8, :cond_7

    .line 389
    const v8, 0x7f0e0c15

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 391
    :cond_7
    const v8, 0x7f0e0c16

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1289
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 1292
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 1294
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 1296
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 1322
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 1297
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 1300
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1301
    add-int/lit8 v2, v2, 0x1

    .line 1302
    goto :goto_0

    .line 1305
    :cond_2
    const/4 v0, 0x0

    .line 1306
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1307
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1308
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1311
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 1316
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 1317
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1318
    goto :goto_0

    .line 1322
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1436
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 1450
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1451
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1453
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1454
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 1455
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 526
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 527
    const-string v1, "CryptKeeper"

    const-string v2, "mAudioManager is null, so need to gett"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 532
    :cond_0
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_3

    .line 533
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 560
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 563
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_4

    .line 566
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 571
    :cond_2
    :goto_1
    return-void

    .line 534
    :cond_3
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 544
    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    .line 546
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    const/16 v2, 0x24

    if-lt v1, v2, :cond_1

    .line 547
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    .line 548
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit()V
    .locals 14

    .prologue
    const/16 v13, 0xb4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1156
    const v6, 0x7f0d0149

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 1157
    const v6, 0x7f0d0148

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    .line 1158
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    .line 1159
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1160
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 1162
    sget v6, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    if-nez v6, :cond_0

    .line 1163
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v7, 0x60000

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    sput v6, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    .line 1164
    :cond_0
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    new-array v7, v11, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    sget v9, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1166
    new-instance v5, Lcom/android/settings/CryptKeeper$9;

    invoke-direct {v5, p0}, Lcom/android/settings/CryptKeeper$9;-><init>(Lcom/android/settings/CryptKeeper;)V

    .line 1185
    .local v5, "watcher":Landroid/text/TextWatcher;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1186
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 1187
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1188
    .local v3, "lFieldLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 1189
    invoke-direct {p0, v13}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1190
    invoke-direct {p0, v13}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1191
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    .end local v3    # "lFieldLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1198
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1199
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1200
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1204
    .end local v5    # "watcher":Landroid/text/TextWatcher;
    :cond_2
    const v6, 0x7f0d0109

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView;

    iput-object v6, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 1205
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v6, :cond_3

    .line 1206
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 1210
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1211
    const v6, 0x7f0d013e

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1212
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1213
    const-string v6, "CryptKeeper"

    const-string v7, "Removing the emergency Call button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_4
    const v6, 0x7f0d015e

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1219
    .local v1, "imeSwitcher":Landroid/view/View;
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1221
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_5

    invoke-direct {p0, v2, v10}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1222
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    new-instance v6, Lcom/android/settings/CryptKeeper$10;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/CryptKeeper$10;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    :cond_5
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v6, :cond_6

    .line 1235
    const-string v6, "CryptKeeper"

    const-string v7, "Acquiring wakelock."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-string v6, "power"

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1237
    .local v4, "pm":Landroid/os/PowerManager;
    if-eqz v4, :cond_6

    .line 1238
    const/16 v6, 0x1a

    const-string v7, "CryptKeeper"

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1239
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1242
    const/16 v6, 0x60

    iput v6, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 1248
    .end local v4    # "pm":Landroid/os/PowerManager;
    :cond_6
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    if-nez v6, :cond_7

    .line 1249
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/CryptKeeper$11;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/CryptKeeper$11;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1257
    :cond_7
    invoke-virtual {p0, v10}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1258
    sget-object v6, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1259
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v6, :cond_8

    .line 1260
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v7, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1262
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1266
    :cond_8
    iput v10, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 1268
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setMaxPasswordAttempts()V

    .line 1270
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 1272
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1273
    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1276
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x480000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1278
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1386
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 1388
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 1389
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1391
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1392
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1393
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1395
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1386
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMaxPasswordAttempts()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 1522
    const/4 v0, 0x0

    .line 1523
    .local v0, "adminMaxFailedAttempts":I
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    const-string v7, "security.ode.maxattempts"

    invoke-virtual {v5, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPropertyFromFooter(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1524
    .local v2, "maxFailedAttempts":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1525
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1527
    :cond_0
    const/4 v3, -0x1

    .line 1528
    .local v3, "result":I
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 1530
    .local v4, "service":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getCCmodeForCryptKeeper()I

    move-result v3

    .line 1531
    if-nez v3, :cond_2

    if-lez v0, :cond_2

    .line 1532
    sput v0, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    :cond_1
    :goto_0
    return-void

    .line 1535
    :catch_0
    move-exception v1

    .line 1536
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    const-string v6, "Can\'t get getCCmodeForCryptKeeper"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v5, "VZW"

    sget-object v6, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1541
    sput v8, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    .line 1542
    if-lez v0, :cond_1

    .line 1543
    sput v0, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    goto :goto_0

    .line 1545
    :cond_3
    const-string v5, "TNG"

    sget-object v6, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1546
    sput v8, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    goto :goto_0

    .line 1548
    :cond_4
    const/16 v5, 0x1e

    sput v5, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    goto :goto_0
.end method

.method private setupUi()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x400

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 733
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    if-nez v1, :cond_0

    .line 734
    invoke-static {}, Lcom/android/settings/EFSProperties;->loadODEConfig()Lcom/android/settings/EFSProperties$ODEProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    .line 740
    :cond_0
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    if-nez v1, :cond_1

    const-string v1, "error"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 742
    :cond_1
    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 744
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    .line 850
    :cond_2
    :goto_0
    return-void

    .line 748
    :cond_3
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 749
    .local v7, "progress":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "progress"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 751
    :cond_4
    const v0, 0x7f04007c

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 754
    const-string v0, "vold.encrypt_type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 755
    .local v9, "type":Ljava/lang/String;
    const-string v0, "decrypt"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 756
    iput-boolean v11, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    .line 757
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 758
    .local v8, "tv":Landroid/widget/TextView;
    const v0, 0x7f0e1022

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 759
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 764
    .end local v8    # "tv":Landroid/widget/TextView;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 761
    :cond_5
    const v0, 0x7f0d014e

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 765
    .end local v9    # "type":Ljava/lang/String;
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v1, :cond_7

    const-string v1, "password"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 766
    :cond_7
    const-string v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 767
    .local v6, "crypto_state":Ljava/lang/String;
    const-string v0, "ro.boot.ucs_mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 768
    .local v10, "ucsFlag":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-ne v0, v4, :cond_9

    const-string v0, "1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 769
    const-string v0, "persist.security.ucs.csname"

    const-string v1, "boot_test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v0, "2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "unencrypted"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 771
    const-string v0, "security.knox_ucs_mode"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v5, v2, Lcom/android/settings/EFSProperties$ODEProperties;->enabledWrap:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/UCSCryptKeeperTask;-><init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZI)V

    new-array v1, v11, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 774
    :cond_8
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v5, -0x1

    move-object v2, p0

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/UCSCryptKeeperTask;-><init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZI)V

    new-array v1, v11, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 777
    :cond_9
    new-instance v0, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;)V

    new-array v1, v11, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 845
    .end local v6    # "crypto_state":Ljava/lang/String;
    .end local v10    # "ucsFlag":Ljava/lang/String;
    :cond_a
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v1, :cond_2

    .line 847
    new-instance v1, Lcom/android/settings/CryptKeeper$ValidationTask;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 848
    iput-boolean v4, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto/16 :goto_0
.end method

.method private showFactoryReset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0d013f

    const v2, 0x7f0d0058

    .line 973
    const v0, 0x7f0d0140

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    .line 974
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    if-eq v0, v5, :cond_0

    const-string v0, "1"

    const-string v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 979
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v1, p0}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 990
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0255

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 991
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0256

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1006
    :goto_1
    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 992
    :cond_2
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 994
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e024f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 995
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0250

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 996
    :cond_3
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 998
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0253

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 999
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0254

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1002
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0251

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1003
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0252

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1441
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1442
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1446
    :goto_0
    return-void

    .line 1444
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateProgress()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1009
    const-string v9, "vold.encrypt_progress"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1011
    .local v5, "state":Ljava/lang/String;
    const-string v9, "error_partially_encrypted"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1013
    const v9, 0x7f040073

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 1015
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    .line 1091
    :goto_0
    return-void

    .line 1022
    :cond_0
    const-string v0, ""

    .line 1023
    .local v0, "TextString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1026
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 1029
    .local v2, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    const/16 v2, 0x32

    .line 1033
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1036
    .local v3, "progress":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    if-nez v9, :cond_6

    .line 1037
    const-string v9, "VZW"

    sget-object v10, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1038
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1039
    const v9, 0x7f0e1024

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    :goto_2
    const-string v9, "CryptKeeper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Encryption progress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :try_start_1
    const-string v9, "vold.encrypt_time_remaining"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1065
    .local v7, "timeProperty":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1066
    .local v6, "time":I
    if-ltz v6, :cond_1

    .line 1068
    add-int/lit8 v9, v6, 0x9

    div-int/lit8 v9, v9, 0xa

    mul-int/lit8 v6, v9, 0xa

    .line 1069
    int-to-long v10, v6

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    .line 1072
    const v9, 0x7f0e024a

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1080
    .end local v6    # "time":I
    .end local v7    # "timeProperty":Ljava/lang/String;
    :cond_1
    :goto_3
    const v9, 0x7f0d013f

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1081
    .local v8, "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 1084
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    :cond_2
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1090
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1029
    .end local v3    # "progress":Ljava/lang/String;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_3
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto/16 :goto_1

    .line 1030
    :catch_0
    move-exception v1

    .line 1031
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "CryptKeeper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing progress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1042
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "progress":Ljava/lang/String;
    :cond_4
    const v9, 0x7f0e1025

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1045
    :cond_5
    const v9, 0x7f0e1023

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1048
    :cond_6
    const-string v9, "VZW"

    sget-object v10, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1049
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1050
    const v9, 0x7f0e0248

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1053
    :cond_7
    const v9, 0x7f0e0249

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1056
    :cond_8
    const v9, 0x7f0e0247

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1076
    :catch_1
    move-exception v9

    goto/16 :goto_3
.end method

.method private wipeStorage()V
    .locals 4

    .prologue
    .line 416
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    const-string v2, "android.intent.extra.REASON"

    const-string v3, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    const-string v2, "security.ode.sdformat"

    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    const-string v2, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    .line 429
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string v2, "CryptKeeper"

    const-string v3, "Error while formatting external SD card..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1503
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1493
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 579
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 597
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 600
    iput-object p0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    .line 601
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 602
    const-string v5, "persist.omc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    .line 604
    const-string v5, "ro.csc.country_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/CryptKeeper;->mCountryCode:Ljava/lang/String;

    .line 605
    const-string v5, ""

    sget-object v6, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "null"

    sget-object v6, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 606
    :cond_0
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    .line 611
    :cond_1
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "state":Ljava/lang/String;
    const-string v5, "ro.boot.ucs_mode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, "ucsFlag":Ljava/lang/String;
    const-string v5, "ro.crypto.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "crypto_state":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "encrypted"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 617
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "trigger_restart_framework"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 618
    :cond_3
    invoke-static {p0}, Lcom/android/settings/CryptKeeper;->disableCryptKeeperComponent(Landroid/content/Context;)V

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 666
    :goto_0
    return-void

    .line 634
    :cond_4
    const-string v5, "security.ode.cryptkeeper.status"

    const-string v6, "entered"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 639
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :cond_5
    :goto_1
    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 647
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v6, 0x3370000

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 649
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 656
    .local v1, "lastInstance":Ljava/lang/Object;
    instance-of v5, v1, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v5, :cond_6

    move-object v2, v1

    .line 657
    check-cast v2, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 658
    .local v2, "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    iget-object v5, v2, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 659
    const-string v5, "CryptKeeper"

    const-string v6, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v2    # "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    :cond_6
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 664
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 641
    .end local v1    # "lastInstance":Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 884
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 886
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 887
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 891
    :cond_2
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1338
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 1340
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1367
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 1347
    .restart local v0    # "password":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    const-string v3, ""

    sput-object v3, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 1355
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1356
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1358
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    .line 1359
    new-instance v3, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v1, v2

    .line 1365
    goto :goto_0

    .line 1362
    :cond_3
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1482
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 694
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 695
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 696
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 590
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 591
    const-string v0, "mBootCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    .line 592
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 682
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 683
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 686
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 687
    const-string v0, "Australia"

    sget-object v1, Lcom/android/settings/CryptKeeper;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 690
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 866
    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 867
    .local v0, "state":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 869
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 584
    const-string v0, "mBootCompleted"

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 585
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 586
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 675
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 676
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    .line 677
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 854
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 855
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 856
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 857
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1498
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1499
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1487
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1488
    const/4 v0, 0x0

    return v0
.end method

.method protected final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1114
    if-eqz p1, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method protected updateEmergencyCallButtonState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1404
    const v2, 0x7f0d013e

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1405
    .local v0, "emergencyCall":Landroid/widget/Button;
    const v2, 0x7f0d013d

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 1407
    if-nez v0, :cond_0

    .line 1433
    :goto_0
    return-void

    .line 1410
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1411
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1412
    new-instance v2, Lcom/android/settings/CryptKeeper$12;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$12;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1426
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1428
    const v1, 0x7f0e0cb3

    .line 1432
    .local v1, "textId":I
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1420
    .end local v1    # "textId":I
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1421
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1430
    :cond_2
    const v1, 0x7f0e0cb2

    .restart local v1    # "textId":I
    goto :goto_1
.end method
