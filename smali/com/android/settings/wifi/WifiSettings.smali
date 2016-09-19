.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SHOW_BUTTON_BACKGROUND:Z

.field public static cancel_network:I

.field public static forget_network:I

.field public static mInOffloadDialog:Z

.field public static mIsReconn:I

.field public static mIsWifiStateDisabling:Z

.field private static final mSalesCode:Ljava/lang/String;

.field public static mStartWith:I

.field public static mVerboseLogging:I

.field public static mWpsInProgress:Z

.field static rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsSupportSecWFC:Z

.field private static savedNetworksExist:Z

.field private static tempConfig:Landroid/net/wifi/WifiConfiguration;


# instance fields
.field private final ALWAYS_ALLOW_SCANNING_OFF:I

.field private final ALWAYS_ALLOW_SCANNING_ON:I

.field private final CMCC_CHARGE_WARNING_OFF:I

.field private final CMCC_CHARGE_WARNING_ON:I

.field private final CONNECTION_METHOD_ALWAYS_ASK:I

.field private final CONNECTION_METHOD_AUTOMATIC:I

.field private final CONNECTION_METHOD_MANUALLY:I

.field private final ERROR_DIALOG_DURATION_TIME:I

.field private final IWLAN_OFF:I

.field private final IWLAN_ON:I

.field private final PASSPOINT_OFF:I

.field private final PASSPOINT_ON:I

.field private final SLEEP_POLICY_ALWAYS:I

.field private final SLEEP_POLICY_NEVER:I

.field private final SLEEP_POLICY_ONLY_WHEN_PLUGGED_IN:I

.field private final WLAN_PERMISSION_REQUEST_OFF:I

.field private final WLAN_PERMISSION_REQUEST_ON:I

.field bRetryPopup:Z

.field private helpMenuCheck:Z

.field private isDcm:Z

.field private isDeleted:Z

.field private isKioskContainer:Z

.field isManualConnect:Z

.field private itemPositionsAfterDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mActivity:Landroid/app/Activity;

.field private mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

.field private mAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

.field private mAllowUpdateScanList:I

.field private mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

.field private mAutojoinMenuItem:Landroid/view/MenuItem;

.field private mBackgroundResId:I

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field mCurrentAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mDeleteAccessPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDhcpErrorApNetId:I

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDurationDialogHandler:Landroid/os/Handler;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mErrorApInfo:Landroid/net/wifi/WifiInfo;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mErrorDialogStopScan:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFirst5GScanFlag:Z

.field private mForceShowDialog:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mHandlerForKTCM:Landroid/os/Handler;

.field private mIgnoreConnectedMsg:Z

.field private mInManageNetwork:Z

.field private mInPickerDialog:Z

.field private mInSecPickerActivity:Z

.field private mInSetupWizardWifiScreen:Z

.field private mInsertAccessPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEmerMode:Z

.field private mIsFromLocation:Z

.field private mIsQrCodeReceiver:Z

.field private mIsRunningAnimation:Z

.field private mIsShouldSendResult:Z

.field private mIsSupportSecWhitelist:Z

.field private mItemClickListner:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private mIwlanDialog:Landroid/app/Dialog;

.field mLastAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private final mMHSFilter:Landroid/content/IntentFilter;

.field private final mMHSReceiver:Landroid/content/BroadcastReceiver;

.field private mMacAddressFooter:Landroid/view/View;

.field mMaliciousHotspotDetectionDialog:Landroid/app/Dialog;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobilePolicyDataEnable:Z

.field private mNfcManager:Landroid/nfc/NfcManager;

.field private mOpBranding:Ljava/lang/String;

.field private mP2pSupported:Z

.field private mPasspointDialog:Landroid/app/Dialog;

.field private mPermissionRequestDialog:Landroid/app/Dialog;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

.field private mQrCodeNetworkId:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetDialog:Landroid/app/Dialog;

.field private mRunnableForKTCM:Ljava/lang/Runnable;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedApCount:I

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSccDiffDialog:Landroid/app/AlertDialog;

.field private mScrollTimer:J

.field private mSecSetupWizardMode:Z

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field mSelectedPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupWizardMode:Z

.field private mShowEmptyText:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field private mUpdateAccessPointsHandler:Landroid/os/Handler;

.field private mWifiDirect:Landroid/widget/TextView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiOffloadDialog:Lcom/android/settings/wifi/WifiOffloadDialog;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

.field private mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

.field private mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field private mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

.field private skipMaliciousHotspotCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 324
    sput v2, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    .line 329
    sput v2, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 357
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->SHOW_BUTTON_BACKGROUND:Z

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    .line 418
    sput v2, Lcom/android/settings/wifi/WifiSettings;->mVerboseLogging:I

    .line 420
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "SalesCode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mSalesCode:Ljava/lang/String;

    .line 475
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->sIsSupportSecWFC:Z

    .line 477
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

    .line 593
    sput-boolean v2, Lcom/android/settings/wifi/WifiSettings;->mIsWifiStateDisabling:Z

    .line 5813
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$30;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$30;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 678
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 356
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mBackgroundResId:I

    .line 363
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 367
    iput v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDhcpErrorApNetId:I

    .line 369
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 386
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    .line 388
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    .line 398
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->ERROR_DIALOG_DURATION_TIME:I

    .line 429
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    .line 432
    sget-object v0, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    .line 433
    const-string v0, "SKT"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KTT"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LGU"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSecWhitelist:Z

    .line 435
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->isManualConnect:Z

    .line 442
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->ALWAYS_ALLOW_SCANNING_ON:I

    .line 443
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->ALWAYS_ALLOW_SCANNING_OFF:I

    .line 446
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->PASSPOINT_ON:I

    .line 447
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->PASSPOINT_OFF:I

    .line 450
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->WLAN_PERMISSION_REQUEST_ON:I

    .line 451
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->WLAN_PERMISSION_REQUEST_OFF:I

    .line 457
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->CMCC_CHARGE_WARNING_ON:I

    .line 458
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->CMCC_CHARGE_WARNING_OFF:I

    .line 461
    iput v6, p0, Lcom/android/settings/wifi/WifiSettings;->SLEEP_POLICY_ALWAYS:I

    .line 462
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->SLEEP_POLICY_ONLY_WHEN_PLUGGED_IN:I

    .line 463
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->SLEEP_POLICY_NEVER:I

    .line 466
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->IWLAN_ON:I

    .line 467
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->IWLAN_OFF:I

    .line 470
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->CONNECTION_METHOD_AUTOMATIC:I

    .line 471
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->CONNECTION_METHOD_MANUALLY:I

    .line 472
    iput v6, p0, Lcom/android/settings/wifi/WifiSettings;->CONNECTION_METHOD_ALWAYS_ASK:I

    .line 494
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->isDcm:Z

    .line 570
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    .line 574
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    .line 575
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    .line 579
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    .line 580
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 581
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsQrCodeReceiver:Z

    .line 582
    iput v5, p0, Lcom/android/settings/wifi/WifiSettings;->mQrCodeNetworkId:I

    .line 594
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRunningAnimation:Z

    .line 595
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 596
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    .line 597
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    .line 598
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->isDeleted:Z

    .line 599
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mShowEmptyText:Z

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    .line 602
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentAccessPoints:Ljava/util/List;

    .line 603
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAccessPoints:Ljava/util/List;

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInsertAccessPoints:Ljava/util/ArrayList;

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDeleteAccessPoints:Ljava/util/ArrayList;

    .line 607
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    .line 643
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    .line 1414
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1415
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mPersonaManager:Landroid/os/PersonaManager;

    .line 3084
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$25;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$25;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mItemClickListner:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 4413
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->skipMaliciousHotspotCheck:Z

    .line 5726
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 5727
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMobilePolicyDataEnable:Z

    .line 5728
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$29;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettings$29;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 5934
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mMaliciousHotspotDetectionDialog:Landroid/app/Dialog;

    .line 679
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 680
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 723
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mMHSFilter:Landroid/content/IntentFilter;

    .line 724
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mMHSReceiver:Landroid/content/BroadcastReceiver;

    .line 727
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    .line 728
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    .line 733
    return-void

    :cond_1
    move v0, v1

    .line 433
    goto/16 :goto_0
.end method

.method private RemoveNotUsedWpsButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2519
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2520
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2521
    return-void
.end method

.method private WifiDirectTts(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const v4, 0x7f0e090c

    const v3, 0x7f0e03b1

    .line 5800
    const-string v0, ""

    .line 5801
    .local v0, "wiFiDirectMenuTts":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 5802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5810
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5811
    return-void

    .line 5806
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e090d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRunningAnimation:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/WifiSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRunningAnimation:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isMobileApON()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPermissionRequestDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->changeHotspot20(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;)Lcom/android/settings/wifi/AccessPoint;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;)Lcom/android/settings/wifi/AccessPoint;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/settings/wifi/WifiSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "x2"    # Z

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    .line 220
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    return v0
.end method

.method static synthetic access$3602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 220
    sput-boolean p0, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    return p0
.end method

.method static synthetic access$3700()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$3702(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 220
    sput-object p0, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/ProgressCategoryWifi;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategoryWifi;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/settings/wifi/WifiSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->skipMaliciousHotspotCheck:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addDeleteFromAdapter()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->deleteFromAdapter()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addToAdapter()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPointListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    return-object v0
.end method

.method private addDeleteFromAdapter()V
    .locals 10

    .prologue
    .line 1277
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v1

    .line 1278
    .local v1, "headersCount":I
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1279
    const-string v8, "WifiSettings"

    const-string v9, "addDeleteFromAdapter"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/settings/wifi/AccessPointListAdapter;->setNotifyOnChange(Z)V

    .line 1282
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDeleteAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1283
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    if-eqz v0, :cond_0

    .line 1284
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v8, v0}, Lcom/android/settings/wifi/AccessPointListAdapter;->remove(Lcom/android/settings/wifi/AccessPoint;)V

    goto :goto_0

    .line 1286
    :cond_0
    const-string v8, "WifiSettings"

    const-string v9, "onAdd - NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1289
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_1
    const/4 v2, 0x0

    .line 1290
    .local v2, "i":I
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInsertAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1291
    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    if-eqz v0, :cond_5

    .line 1292
    const/4 v7, 0x0

    .line 1293
    .local v7, "k":I
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1294
    .local v5, "insertpos":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 1295
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v5, v8, :cond_2

    .line 1296
    add-int/lit8 v7, v7, 0x1

    .line 1294
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1299
    :cond_2
    add-int v8, v5, v2

    sub-int v4, v8, v7

    .line 1300
    .local v4, "in":I
    if-gez v4, :cond_3

    const/4 v4, 0x0

    .line 1301
    :cond_3
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v8}, Lcom/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v8

    if-lt v4, v8, :cond_4

    .line 1302
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v8, v0}, Lcom/android/settings/wifi/AccessPointListAdapter;->append(Lcom/android/settings/wifi/AccessPoint;)V

    .line 1308
    .end local v4    # "in":I
    .end local v5    # "insertpos":I
    .end local v6    # "j":I
    .end local v7    # "k":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 1309
    goto :goto_1

    .line 1304
    .restart local v4    # "in":I
    .restart local v5    # "insertpos":I
    .restart local v6    # "j":I
    .restart local v7    # "k":I
    :cond_4
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v8, v0, v4}, Lcom/android/settings/wifi/AccessPointListAdapter;->insert(Lcom/android/settings/wifi/AccessPoint;I)V

    goto :goto_3

    .line 1307
    .end local v4    # "in":I
    .end local v5    # "insertpos":I
    .end local v6    # "j":I
    .end local v7    # "k":I
    :cond_5
    const-string v8, "WifiSettings"

    const-string v9, "onAdd - NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1310
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_6
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v8}, Lcom/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 1311
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1312
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInsertAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1313
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDeleteAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1314
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1315
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 3964
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3965
    const v0, 0x7f0e08e2

    if-eq p1, v0, :cond_0

    const v0, 0x7f0e03be

    if-ne p1, v0, :cond_3

    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mIsWifiStateDisabling:Z

    if-eqz v0, :cond_3

    .line 3968
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0e038c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3974
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3975
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListAdapter;->removeall()V

    .line 3980
    :cond_2
    return-void

    .line 3970
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private addToAdapter()V
    .locals 8

    .prologue
    .line 1333
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v1

    .line 1334
    .local v1, "headersCount":I
    const/4 v2, 0x0

    .line 1335
    .local v2, "i":I
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1336
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->isInsertDeleting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1337
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/AccessPointListAdapter;->setNotifyOnChange(Z)V

    .line 1339
    :cond_0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInsertAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1340
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    if-eqz v0, :cond_1

    .line 1341
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1342
    .local v5, "insertpos":I
    add-int v4, v5, v2

    .line 1343
    .local v4, "in":I
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v6, v0, v4}, Lcom/android/settings/wifi/AccessPointListAdapter;->insert(Lcom/android/settings/wifi/AccessPoint;I)V

    .line 1346
    .end local v4    # "in":I
    .end local v5    # "insertpos":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 1347
    goto :goto_0

    .line 1345
    :cond_1
    const-string v6, "WifiSettings"

    const-string v7, "onAdd - NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1348
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 1349
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInsertAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1350
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1351
    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5886
    if-nez p1, :cond_1

    .line 5921
    :cond_0
    :goto_0
    return v7

    .line 5890
    :cond_1
    const-string v9, "device_policy"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 5895
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 5896
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "android.software.device_admin"

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v2, :cond_2

    move v7, v8

    .line 5897
    goto :goto_0

    .line 5900
    :cond_2
    const/4 v3, 0x0

    .line 5901
    .local v3, "isConfigEligibleForLockdown":Z
    if-eqz v2, :cond_3

    .line 5902
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .line 5903
    .local v0, "deviceOwnerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 5905
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 5907
    .local v1, "deviceOwnerUid":I
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v9, :cond_4

    move v3, v7

    .line 5914
    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 5918
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 5919
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v9, "wifi_device_owner_configs_lockdown"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    move v4, v7

    .line 5921
    .local v4, "isLockdownFeatureEnabled":Z
    :goto_2
    if-eqz v4, :cond_0

    move v7, v8

    goto :goto_0

    .end local v4    # "isLockdownFeatureEnabled":Z
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .restart local v1    # "deviceOwnerUid":I
    :cond_4
    move v3, v8

    .line 5907
    goto :goto_1

    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    .restart local v6    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    move v4, v8

    .line 5919
    goto :goto_2

    .line 5908
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private changeHotspot20(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    .line 2444
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 2445
    .local v5, "msg":Landroid/os/Message;
    const/16 v6, 0x29

    iput v6, v5, Landroid/os/Message;->what:I

    .line 2446
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2447
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "enable"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2448
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2449
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 2450
    const-string v6, "WifiSettings"

    const-string v7, "HOTSPOT20 config store error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_0
    return-void

    .line 2453
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_hotspot20_enable"

    if-eqz p1, :cond_3

    move v6, v7

    :goto_0
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2455
    if-nez p1, :cond_0

    .line 2456
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2457
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_0

    .line 2458
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2459
    new-instance v4, Lcom/android/settings/wifi/WifiSettings$20;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiSettings$20;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 2468
    .local v4, "mForgetListener":Landroid/net/wifi/WifiManager$ActionListener;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2469
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v6, v7, :cond_2

    .line 2470
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v8, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 2453
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mForgetListener":Landroid/net/wifi/WifiManager$ActionListener;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5152
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5153
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5155
    :cond_0
    return-void
.end method

.method private checkStartingDialogWithSettings()V
    .locals 5

    .prologue
    .line 1816
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sns_dialog_for_starting_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 1818
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1819
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.wifi.WifiSnsExceptionActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1820
    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1821
    const-string v2, "SSID"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    :try_start_0
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_SNS_DIALOG_FOR_STARTING_SETTINGS == 11, create WifiSnsExceptionActivity SSID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1831
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1827
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1828
    .local v0, "ee":Landroid/content/ActivityNotFoundException;
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 9
    .param p1, "networkId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4464
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectNetwork nid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->skipMaliciousHotspotCheck:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->isDetectedAsMaliciousHotspot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4469
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectNetwork - BSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - is Detected As Malicious Hotspot. Show MaliciousHotspotDetectionDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    const-string v0, "WifiSettings"

    const-string v1, "show MaliciousHotspotDetectionDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->skipMaliciousHotspotCheck:Z

    .line 4472
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiSettings;->showMaliciousHotspotDialog(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;Ljava/lang/String;)V

    .line 4516
    :goto_0
    return-void

    .line 4475
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->skipMaliciousHotspotCheck:Z

    .line 4493
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->insertScanResultLogging()V

    .line 4495
    sget-boolean v0, Lcom/android/settings/Utils;->ENABLE_DETAIL_EAP_ERROR_CODES_AND_STATE:Z

    if-eqz v0, :cond_3

    .line 4496
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 4497
    .local v8, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v8, :cond_3

    .line 4498
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 4499
    .local v7, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, p1, :cond_1

    .line 4500
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 4501
    :cond_2
    iput v4, v7, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 4509
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    .line 4510
    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4511
    sput-boolean v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    .line 4513
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 4514
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setSecBssidWhitelist(Lcom/android/settings/wifi/AccessPoint;)V

    .line 4515
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method private connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4415
    const-string v0, "WifiSettings"

    const-string v1, "connectNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->skipMaliciousHotspotCheck:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->isDetectedAsMaliciousHotspot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4420
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectNetwork - BSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - is Detected As Malicious Hotspot. Show MaliciousHotspotDetectionDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->skipMaliciousHotspotCheck:Z

    .line 4422
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiSettings;->showMaliciousHotspotDialog(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;Ljava/lang/String;)V

    .line 4461
    :goto_0
    return-void

    .line 4425
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->skipMaliciousHotspotCheck:Z

    .line 4442
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->insertScanResultLogging()V

    .line 4444
    sget-boolean v0, Lcom/android/settings/Utils;->ENABLE_DETAIL_EAP_ERROR_CODES_AND_STATE:Z

    if-eqz v0, :cond_2

    .line 4445
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 4446
    :cond_1
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 4449
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    .line 4450
    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4451
    sput-boolean v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    .line 4454
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSecWhitelist:Z

    if-eqz v0, :cond_4

    .line 4455
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->isManualConnect:Z

    .line 4457
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 4458
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method private constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "lastInfo"    # Landroid/net/wifi/WifiInfo;
    .param p4, "lastState"    # Landroid/net/NetworkInfo$DetailedState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3985
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3988
    .local v3, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v4, Lcom/android/settings/wifi/WifiSettings$Multimap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings$1;)V

    .line 3990
    .local v4, "apMap":Lcom/android/settings/wifi/WifiSettings$Multimap;, "Lcom/android/settings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 3991
    .local v6, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_a

    .line 3993
    sget-boolean v18, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_3

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 3994
    sget-boolean v17, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v17, :cond_4

    const/16 v17, 0x1

    :goto_1
    sput-boolean v17, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 3995
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v17, p1

    .line 3996
    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3999
    :cond_0
    const-string v17, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 4000
    sget-object v17, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    sget-object v18, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 4002
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 4003
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v5, :cond_5

    .line 4004
    const-string v17, "WifiSettings"

    const-string v18, "constructAccessPoints config is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3993
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 3994
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 4007
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    sget-boolean v17, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v17, :cond_8

    :cond_6
    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v2, v0, v5, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4008
    .local v2, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 4009
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 4011
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 4012
    const-string v17, "VerizonWiFi"

    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 4013
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4014
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4015
    const-string v17, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 4016
    sget-object v17, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4007
    .end local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_8
    const/16 v17, 0x0

    goto :goto_3

    .line 4020
    .restart local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_9
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4021
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4022
    const-string v17, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 4023
    sget-object v17, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4029
    .end local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v15

    .line 4030
    .local v15, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v15, :cond_15

    .line 4031
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "results size is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    const/4 v9, 0x3

    .line 4033
    .local v9, "hideLevel":I
    sget-boolean v17, Lcom/android/settings/Utils;->HIDE_EXCLUDED_AP_LIST:Z

    if-eqz v17, :cond_b

    .line 4034
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "hidden_ap_sinal_strength"

    const/16 v19, 0x3

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 4037
    :cond_b
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 4039
    .local v14, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    iget-object v0, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_c

    iget-object v0, v14, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "[IBSS]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 4044
    const/4 v8, 0x0

    .line 4045
    .local v8, "found":Z
    iget-object v0, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    .line 4046
    .restart local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    sget-boolean v17, Lcom/android/settings/Utils;->HIDE_EXCLUDED_AP_LIST:Z

    if-eqz v17, :cond_e

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getRssi()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v9}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(II)Z

    move-result v17

    if-nez v17, :cond_d

    .line 4053
    :cond_e
    invoke-virtual {v2, v14}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 4054
    const/4 v8, 0x1

    goto :goto_5

    .line 4056
    .end local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_f
    if-nez v8, :cond_c

    .line 4057
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    sget-boolean v17, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v17, :cond_13

    :cond_10
    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v2, v0, v14, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;Z)V

    .line 4058
    .restart local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    sget-boolean v17, Lcom/android/settings/Utils;->HIDE_EXCLUDED_AP_LIST:Z

    if-eqz v17, :cond_11

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_11

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_11

    iget v0, v14, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v9}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(II)Z

    move-result v17

    if-nez v17, :cond_c

    .line 4064
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 4065
    const-string v17, "VerizonWiFi"

    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 4066
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4067
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4073
    :cond_12
    :goto_7
    iget-boolean v0, v14, Landroid/net/wifi/ScanResult;->is5GHzVsi:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 4074
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    goto/16 :goto_4

    .line 4057
    .end local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_13
    const/16 v17, 0x0

    goto :goto_6

    .line 4070
    .restart local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4071
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 4081
    .end local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v8    # "found":Z
    .end local v9    # "hideLevel":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "result":Landroid/net/wifi/ScanResult;
    :cond_15
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mInManageNetwork = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 4083
    sget-object v17, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4084
    sget-object v16, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    .line 4182
    :goto_8
    return-object v16

    .line 4088
    :cond_16
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4090
    .local v16, "tempAccessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_17
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    .line 4091
    .restart local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getRssi()I

    move-result v17

    const/16 v18, -0x55

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_18

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_18

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_18

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_18

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_18

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_18

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_18

    .line 4098
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "constructAccessPoints : skip - accessPoint.rssi : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getRssi()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", state : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", SSID : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 4103
    :cond_18
    const/4 v12, 0x0

    .line 4113
    .local v12, "is3lmActivated":Z
    const/4 v13, 0x0

    .line 4114
    .local v13, "mobile":Lcom/android/settings/wifi/AccessPoint;
    const/4 v7, 0x0

    .line 4115
    .local v7, "filter":Z
    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->isMaliciousHotspotDetectionAP(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 4167
    :cond_19
    :goto_a
    sget-boolean v17, Lcom/android/settings/Utils;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    if-eqz v17, :cond_17

    .line 4168
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_17

    if-eqz v13, :cond_17

    .line 4169
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4170
    const-string v17, "WifiSettings"

    const-string v18, "network removed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 4118
    :cond_1a
    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->isDcm:Z

    move/from16 v17, v0

    if-nez v17, :cond_1b

    const-string v17, "CMCC"

    sget-object v18, Lcom/android/settings/Utils;->CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 4119
    :cond_1b
    sget-boolean v17, Lcom/android/settings/Utils;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    if-eqz v17, :cond_1e

    .line 4120
    const-string v17, "Swisscom_Auto_Login"

    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1c

    .line 4130
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4132
    const-string v17, "Swisscom"

    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 4133
    move-object v13, v2

    goto :goto_a

    .line 4136
    :cond_1c
    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v17

    if-eqz v17, :cond_1d

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v17, v0

    if-nez v17, :cond_1d

    .line 4137
    const/4 v7, 0x1

    .line 4148
    :cond_1d
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 4152
    :cond_1e
    const-string v17, ""

    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_19

    .line 4162
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 4180
    .end local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v7    # "filter":Z
    .end local v12    # "is3lmActivated":Z
    .end local v13    # "mobile":Lcom/android/settings/wifi/AccessPoint;
    :cond_1f
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4181
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "tempAccessPoints size= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method private deleteFromAdapter()V
    .locals 5

    .prologue
    .line 1317
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v1

    .line 1318
    .local v1, "headersCount":I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/AccessPointListAdapter;->setNotifyOnChange(Z)V

    .line 1319
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDeleteAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1320
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    if-eqz v0, :cond_0

    .line 1321
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/AccessPointListAdapter;->remove(Lcom/android/settings/wifi/AccessPoint;)V

    goto :goto_0

    .line 1323
    :cond_0
    const-string v3, "WifiSettings"

    const-string v4, "onAdd - NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1326
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->isInsertDeleting()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1327
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 1329
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDeleteAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1330
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1331
    return-void
.end method

.method private deleteNetworkFromOffloadDB(Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 5372
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 5373
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5374
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "delete_ssid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5375
    if-eqz v0, :cond_0

    .line 5376
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 5378
    :cond_0
    return-void
.end method

.method private dismissDialog(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 3318
    packed-switch p1, :pswitch_data_0

    .line 3369
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3321
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3322
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 3323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 3324
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 3328
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 3329
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 3330
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 3334
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3335
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3336
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 3340
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3341
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3342
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 3346
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_0

    .line 3347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->dismiss()V

    .line 3348
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 3352
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    if-eqz v0, :cond_0

    .line 3353
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->getSnsSettingDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3354
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    goto :goto_0

    .line 3358
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    if-eqz v0, :cond_0

    .line 3359
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->getWifiSnsSetupWizardDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3360
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    goto :goto_0

    .line 3318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;
    .locals 8
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 3220
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 3221
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getSBlacklist()Ljava/lang/String;

    move-result-object v2

    .line 3222
    .local v2, "sBlackList":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 3223
    .local v4, "sr":Landroid/net/wifi/ScanResult;
    new-instance v3, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 3224
    .local v3, "scanrAP":Lcom/android/settings/wifi/AccessPoint;
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    iget v6, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v5, v6, :cond_0

    .line 3225
    iget-object v5, v3, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v5, p1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 3226
    const/4 v3, 0x0

    .line 3228
    if-eqz v2, :cond_1

    iget-object v5, p1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3229
    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAPBSSID - Avoid returning blacklisted BSSID - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3236
    .end local v3    # "scanrAP":Lcom/android/settings/wifi/AccessPoint;
    .end local v4    # "sr":Landroid/net/wifi/ScanResult;
    :cond_1
    iget-object v5, p1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    return-object v5
.end method

.method private getAccessPoint(I)Lcom/android/settings/wifi/AccessPoint;
    .locals 4
    .param p1, "networkId"    # I

    .prologue
    .line 4991
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPointListAdapter;->getAccessPointList()Ljava/util/List;

    move-result-object v2

    .line 4992
    .local v2, "mAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 4993
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 4994
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, p1, :cond_0

    .line 5015
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 5463
    const/4 v1, 0x0

    .line 5464
    .local v1, "found":Z
    const/4 v3, -0x1

    .line 5465
    .local v3, "newNetId":I
    sget-object v5, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 5466
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5467
    const/4 v1, 0x1

    .line 5468
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 5472
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    .line 5475
    .end local v3    # "newNetId":I
    .local v4, "newNetId":I
    :goto_0
    return v4

    .end local v4    # "newNetId":I
    .restart local v3    # "newNetId":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    .end local v3    # "newNetId":I
    .restart local v4    # "newNetId":I
    goto :goto_0
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPersonaManager:Landroid/os/PersonaManager;

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1834
    const-string v3, "gbk"

    sget-object v4, Lcom/android/settings/wifi/WifiSettings;->CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1835
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1836
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_1

    .line 1837
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1838
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1839
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1840
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1845
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_1
    return-object v3

    .line 1838
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1845
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "networkId"    # I

    .prologue
    .line 4219
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 4220
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 4221
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4222
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 4227
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4554
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 4555
    .local v4, "action":Ljava/lang/String;
    const-string v17, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 4556
    const-string v17, "wifi_state"

    const/16 v18, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    .line 4558
    const-string v17, "WifiSettings"

    const-string v18, ">>> WIFI_STATE_CHANGED_ACTION RECEIVED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    :cond_0
    :goto_0
    return-void

    .line 4559
    :cond_1
    const-string v17, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 4560
    const-string v17, "WifiSettings"

    const-string v18, ">>> SCAN_RESULTS_AVAILABLE_ACTION RECEIVED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mAllowUpdateScanList = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 4564
    const-string v17, "WifiSettings"

    const-string v18, "SKIP SCAN LIST UPDATE!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 4584
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 4585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 4586
    const-string v17, "WifiSettings"

    const-string v18, "Force scan for 5G APs"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4567
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 4568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 4570
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 4571
    .local v12, "msg":Landroid/os/Message;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 4572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4576
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 4577
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->isTalkbackPaused()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mSavedApCount:I

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mSavedApCount:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 4579
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->speakTTS()V

    .line 4580
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    goto/16 :goto_1

    .line 4588
    .end local v12    # "msg":Landroid/os/Message;
    :cond_6
    const-string v17, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 4590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 4592
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 4593
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 4594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4599
    const-string v17, "wifiConfiguration"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 4600
    .local v13, "network":Landroid/net/wifi/WifiConfiguration;
    const-string v17, "changeReason"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 4601
    .local v14, "reason":I
    if-eqz v13, :cond_0

    .line 4602
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">>> CONFIGURED_NETWORKS_CHANGED_ACTION nid:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", reason:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "network.status = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "bRetryPopup = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4605
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "network.disableReason = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4606
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 4609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 4610
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V

    .line 4611
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    goto/16 :goto_0

    .line 4615
    .end local v12    # "msg":Landroid/os/Message;
    .end local v13    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "reason":I
    :cond_7
    const-string v17, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 4616
    const-string v17, "linkProperties"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/LinkProperties;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 4621
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 4622
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 4623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 4627
    .end local v12    # "msg":Landroid/os/Message;
    :cond_8
    const-string v17, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_DETECTED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 4629
    :cond_9
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">>> captive portal state changed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 4633
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 4634
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 4635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 4639
    .end local v12    # "msg":Landroid/os/Message;
    :cond_a
    const-string v17, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 4646
    const-string v17, "newState"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/SupplicantState;

    .line 4648
    .local v15, "state":Landroid/net/wifi/SupplicantState;
    sget-object v17, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 4649
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    .line 4651
    :cond_b
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">>> SUPPLICANT_STATE_CHANGED_ACTION SupplicantState: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4653
    const-string v17, "networkInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 4655
    .local v8, "info":Landroid/net/NetworkInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 4656
    .local v5, "activity":Landroid/app/Activity;
    const-string v17, "connectivity"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 4658
    .local v6, "connectivity":Landroid/net/ConnectivityManager;
    const/16 v16, 0x0

    .line 4659
    .local v16, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_c

    .line 4660
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v16

    .line 4661
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 4662
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">>> SUPPLICANT_STATE_CHANGED_ACTION : wifiNetworkInfo.isConnected() :: mLastInfo = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 4666
    :cond_c
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    if-nez v17, :cond_d

    sget-object v17, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-eq v15, v0, :cond_d

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 4669
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">>> SUPPLICANT_STATE_CHANGED_ACTION state:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    invoke-static {v15}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 4674
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSecWhitelist:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->isManualConnect:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    sget-object v17, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 4675
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->isManualConnect:Z

    .line 4676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->setSecBssidWhitelist(Lcom/android/settings/wifi/AccessPoint;)V

    goto/16 :goto_0

    .line 4678
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v6    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    .end local v15    # "state":Landroid/net/wifi/SupplicantState;
    .end local v16    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_e
    const-string v17, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 4679
    const-string v17, "networkInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 4681
    .restart local v8    # "info":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 4682
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    .line 4684
    .local v10, "isConn":Z
    const-string v17, "network_reconnect"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    .line 4685
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">>> SEC_COMMAND_ID_GET_RECONNECT RECEIVED code:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    if-eqz v10, :cond_f

    .line 4688
    const-string v17, "linkProperties"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/LinkProperties;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4693
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mForceShowDialog:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 4694
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    if-eqz v10, :cond_10

    .line 4695
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 4698
    :cond_10
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->mForceShowDialog:Z

    .line 4705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4706
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 4707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 4712
    :cond_11
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">>> NETWORK_STATE_CHANGED_ACTION state:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4713
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 4715
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 4716
    if-eqz v10, :cond_12

    sget-boolean v17, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v17, :cond_12

    .line 4717
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->finish()V

    .line 4721
    :cond_12
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 4722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 4723
    .local v11, "mCurrentAP":Landroid/net/wifi/WifiInfo;
    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 4725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 4727
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 4728
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 4729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4733
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    goto/16 :goto_0

    .line 4736
    .end local v12    # "msg":Landroid/os/Message;
    :cond_13
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    .line 4737
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    .line 4738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    .line 4739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 4740
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 4741
    .local v9, "intent2":Landroid/content/Intent;
    const-string v17, "ssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4742
    const-string v17, "bssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4743
    const-string v17, "security"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4744
    const-string v17, "frequency"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4745
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4747
    .end local v9    # "intent2":Landroid/content/Intent;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 4752
    .end local v8    # "info":Landroid/net/NetworkInfo;
    .end local v10    # "isConn":Z
    .end local v11    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_15
    const-string v17, "android.net.wifi.RSSI_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 4753
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 4754
    :cond_16
    const-string v17, "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 4755
    const-string v17, "launch_with"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 4760
    :cond_17
    const-string v17, "android.net.wifi.ERROR"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 4761
    const-string v17, "errorCode"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 4762
    .local v7, "errorCode":I
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">>> ERROR_ACTION RECEIVED code:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    .line 4765
    :pswitch_0
    const-string v17, "wifiInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 4766
    const-string v17, "netid"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiSettings;->mDhcpErrorApNetId:I

    .line 4767
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 4768
    const/16 v17, 0x5

    const/16 v18, 0x7530

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 4771
    .end local v7    # "errorCode":I
    :cond_18
    const-string v17, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_19

    const-string v17, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_19

    const-string v17, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 4774
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 4775
    .restart local v5    # "activity":Landroid/app/Activity;
    if-eqz v5, :cond_0

    .line 4776
    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 4778
    .end local v5    # "activity":Landroid/app/Activity;
    :cond_1a
    const-string v17, "com.samsung.android.intent.action.WIFI_P2P_LAUNCH"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto/16 :goto_0

    .line 4763
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static insertLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "wm"    # Landroid/net/wifi/WifiManager;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 5543
    if-nez p1, :cond_0

    .line 5544
    const-string v2, "WifiSettings"

    const-string v3, "LOGGING: feature is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5547
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 5548
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 5549
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5550
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "feature"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5551
    if-eqz p2, :cond_1

    .line 5552
    const-string v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5553
    :cond_1
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5554
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 5555
    return-void
.end method

.method public static insertPasspointLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 1
    .param p0, "wm"    # Landroid/net/wifi/WifiManager;
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 5535
    const-string v0, "WPST"

    invoke-static {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 5536
    return-void
.end method

.method public static insertShowAdvancedOptionsLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 1
    .param p0, "wm"    # Landroid/net/wifi/WifiManager;
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 5539
    const-string v0, "AOST"

    invoke-static {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 5540
    return-void
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 5875
    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHiddenAccessPoint(II)Z
    .locals 2
    .param p0, "rssi"    # I
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    .line 5589
    packed-switch p1, :pswitch_data_0

    .line 5609
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5591
    :pswitch_0
    const/16 v1, -0x41

    if-ge p0, v1, :cond_0

    goto :goto_0

    .line 5596
    :pswitch_1
    const/16 v1, -0x46

    if-ge p0, v1, :cond_0

    goto :goto_0

    .line 5601
    :pswitch_2
    const/16 v1, -0x4b

    if-ge p0, v1, :cond_0

    goto :goto_0

    .line 5589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isMobileApON()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5767
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 5768
    const-string v2, "WifiSettings"

    const-string v3, "Wifi Manager is null so returning false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5774
    :cond_0
    :goto_0
    return v1

    .line 5771
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 5772
    .local v0, "mWifiApState":I
    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 5773
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSharedDeviceKeyguardOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1429
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getPersonaManager()Landroid/os/PersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1, v0}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1430
    const/4 v0, 0x1

    .line 1432
    :cond_0
    return v0
.end method

.method private isUsimUseable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5559
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 5560
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 5561
    .local v2, "simSate":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    .line 5563
    .local v1, "isAirplaneMode":Z
    :goto_0
    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    if-nez v1, :cond_1

    .line 5564
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e040d

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 5584
    :goto_1
    return v4

    .end local v1    # "isAirplaneMode":Z
    :cond_0
    move v1, v4

    .line 5561
    goto :goto_0

    .line 5568
    .restart local v1    # "isAirplaneMode":Z
    :cond_1
    const-string v6, "SKT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5569
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 5571
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v6, "45005"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 5572
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e040f

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 5575
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_2
    const-string v6, "KTT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5576
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 5578
    .restart local v0    # "imsi":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v6, "45008"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45002"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 5579
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e040e

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .end local v0    # "imsi":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 5584
    goto :goto_1
.end method

.method private loggingWps()V
    .locals 4

    .prologue
    .line 5925
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 5926
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 5927
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5928
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "feature"

    const-string v3, "LWPS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5929
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5930
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 5931
    return-void
.end method

.method private setOffMessage()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3920
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 3921
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3922
    const v5, 0x7f0e03bc

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3926
    .local v0, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3927
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v5, "wifi_scan_always_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 3931
    .local v3, "wifiScanningMode":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v5, :cond_0

    if-nez v3, :cond_4

    .line 3934
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3953
    .end local v0    # "briefText":Ljava/lang/CharSequence;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "wifiScanningMode":Z
    :cond_1
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 3955
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    .line 3956
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPointListAdapter;->removeall()V

    .line 3961
    :cond_2
    return-void

    .restart local v0    # "briefText":Ljava/lang/CharSequence;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    move v3, v4

    .line 3927
    goto :goto_0

    .line 3937
    .restart local v3    # "wifiScanningMode":Z
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3938
    .local v1, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3939
    const-string v5, "\n\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3940
    const v5, 0x7f0e03bd

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3941
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v6, Lcom/android/settings/wifi/WifiSettings$28;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettings$28;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-static {v5, v1, v6}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    goto :goto_1
.end method

.method private setProgressBarVisible(Z)V
    .locals 5
    .param p1, "progressOn"    # Z

    .prologue
    .line 4927
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_0

    .line 4928
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    .line 4930
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-eqz v2, :cond_1

    .line 4931
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetupWizard --> WifiSettings setProgressBarVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4932
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4933
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 4934
    const v2, 0x7f0d00b2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 4935
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v1, :cond_1

    .line 4936
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4940
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "progressBar":Landroid/widget/ProgressBar;
    :cond_1
    return-void

    .line 4936
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "progressBar":Landroid/widget/ProgressBar;
    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private setSecBssidWhitelist(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 11
    .param p1, "candidateAccessPoint"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 4521
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSecWhitelist:Z

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 4550
    :cond_0
    :goto_0
    return-void

    .line 4525
    :cond_1
    const-string v8, "iptime"

    iget-object v9, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "iptime5G"

    iget-object v9, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    iget v8, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v8, :cond_0

    .line 4528
    const-string v1, ""

    .line 4530
    .local v1, "bssid":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    .line 4531
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 4532
    .local v2, "count":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 4533
    .local v6, "result":Landroid/net/wifi/ScanResult;
    const/16 v8, 0x64

    if-le v2, v8, :cond_5

    .line 4540
    .end local v6    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4541
    .local v3, "data":Ljava/lang/String;
    const-string v8, "WifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSecBssidWhitelist : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4542
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 4543
    .local v5, "msg":Landroid/os/Message;
    const/16 v8, 0x52

    iput v8, v5, Landroid/os/Message;->what:I

    .line 4545
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4546
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "BSSID"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4547
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4548
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 4535
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "data":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v6    # "result":Landroid/net/wifi/ScanResult;
    :cond_5
    iget-object v8, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4536
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4537
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4892
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_1

    .line 4920
    :cond_0
    :goto_0
    return-void

    .line 4894
    :cond_1
    if-nez p1, :cond_3

    .line 4895
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 4898
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 4900
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_5

    .line 4903
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 4904
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 4905
    :cond_5
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_6

    .line 4906
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    if-nez v0, :cond_0

    .line 4907
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 4908
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 4913
    :cond_6
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_7

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 4914
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 4917
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0
.end method

.method private showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 4944
    if-eqz p1, :cond_0

    .line 4945
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showConnectionFailDialog : config.status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "config.disableReason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4947
    if-eqz p1, :cond_0

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v4, v7, :cond_0

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v4, v8, :cond_0

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-eq v4, v7, :cond_0

    .line 4951
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4952
    const-string v4, "WifiSettings"

    const-string v5, "AP Dialog is aleady showing."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4987
    :cond_0
    :goto_0
    return-void

    .line 4954
    :cond_1
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->getAccessPoint(I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    .line 4955
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    if-nez v0, :cond_3

    .line 4956
    const-string v4, "WifiSettings"

    const-string v5, "Can not found access point. Find access point again."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentAccessPoints:Ljava/util/List;

    .line 4958
    .local v2, "aps_mCurrent":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 4959
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 4960
    .local v1, "ap":Lcom/android/settings/wifi/AccessPoint;
    iget v4, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v5, :cond_2

    .line 4961
    const-string v4, "WifiSettings"

    const-string v5, "Found AccessPoint in aps_mCurrent for retry popup"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4962
    move-object v0, v1

    .line 4969
    .end local v1    # "ap":Lcom/android/settings/wifi/AccessPoint;
    .end local v2    # "aps_mCurrent":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    if-nez v0, :cond_4

    .line 4970
    const-string v4, "WifiSettings"

    const-string v5, "Fail to show retry popup. Can not find access point."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4971
    :cond_4
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4972
    const-string v4, "WifiSettings"

    const-string v5, "Fail to show retry popup. It\'s default AP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4974
    :cond_5
    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v4, :cond_6

    .line 4976
    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v4, v8, :cond_6

    .line 4977
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e030d

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 4981
    :cond_6
    const-string v4, "WifiSettings"

    const-string v5, "Show retry popup"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    invoke-direct {p0, v0, v7}, Lcom/android/settings/wifi/WifiSettings;->showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 13
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3239
    if-eqz p1, :cond_2

    .line 3240
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 3242
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/settings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v8, v9, :cond_2

    .line 3245
    :cond_0
    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3246
    .local v7, "userId":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 3247
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 3248
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 3250
    .local v1, "appName":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v1, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3252
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3253
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_1

    .line 3254
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3259
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "label":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3260
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0e0328

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3279
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "userId":I
    :goto_1
    return-void

    .line 3269
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v8, :cond_3

    .line 3270
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 3271
    iput-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 3275
    :cond_3
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 3276
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 3278
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_1

    .line 3256
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "userId":I
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private showDurationDialog(IIZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "durationTime"    # I
    .param p3, "stopScan"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4231
    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 4232
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_0

    .line 4233
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 4235
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4411
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 4238
    :pswitch_1
    sget-object v0, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    const-string v1, "ollehWiFi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    const-string v1, "olleh GiGA WiFi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4239
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e03ff

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4241
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 4242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0

    .line 4235
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 8
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/16 v7, 0xa

    const/4 v2, 0x0

    .line 3284
    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3285
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getPromptCredentialsEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3287
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3289
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3290
    const-string v0, "getPromptCredentialsEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 3294
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3306
    :goto_0
    return-void

    .line 3294
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3298
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 3301
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 3302
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 3304
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 3305
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 3294
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private showSNSEnableDialogOnSetupWizard()V
    .locals 8

    .prologue
    .line 5741
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5742
    .local v0, "context":Landroid/content/Context;
    sget-object v4, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->PREF_NAME:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5744
    .local v2, "pref_SnsEnableDialogOnSetupWizard":Landroid/content/SharedPreferences;
    sget-object v4, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->KEY_NAME:Ljava/lang/String;

    const-string v5, "DEFAULT_ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 5747
    .local v3, "show":Z
    if-eqz v3, :cond_0

    .line 5748
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 5754
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_poor_connection_warning"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5758
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pref_SnsEnableDialogOnSetupWizard":Landroid/content/SharedPreferences;
    .end local v3    # "show":Z
    :goto_1
    return-void

    .line 5751
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "pref_SnsEnableDialogOnSetupWizard":Landroid/content/SharedPreferences;
    .restart local v3    # "show":Z
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_watchdog_poor_network_test_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5755
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pref_SnsEnableDialogOnSetupWizard":Landroid/content/SharedPreferences;
    .end local v3    # "show":Z
    :catch_0
    move-exception v1

    .line 5756
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startWith(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1849
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiSettings activity start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    packed-switch p1, :pswitch_data_0

    .line 1876
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1858
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 1861
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onSmartNetworkSwitchPressed()V

    goto :goto_0

    .line 1864
    :pswitch_3
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1865
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "wifi_auth_fail_nId"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1866
    .local v0, "nId":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "changeReason"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1867
    .local v1, "reason":I
    if-eq v0, v6, :cond_1

    .line 1868
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAUNCH_WITH_SHOW_RETRY_DIALOG : nId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V

    .line 1871
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    .line 1872
    sput-boolean v5, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    goto :goto_0

    .line 1850
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateAccessPoints(Ljava/lang/Boolean;)V
    .locals 26
    .param p1, "isDoAnimation"    # Ljava/lang/Boolean;

    .prologue
    .line 3707
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    if-nez v21, :cond_1

    .line 3878
    :cond_0
    :goto_0
    return-void

    .line 3708
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 3709
    const v21, 0x7f0e03bf

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 3712
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v20

    .line 3714
    .local v20, "wifiState":I
    const/4 v8, 0x0

    .line 3715
    .local v8, "filter":Z
    const/16 v18, 0x0

    .line 3716
    .local v18, "mobile":Lcom/android/settings/wifi/AccessPoint;
    const-string v21, "WifiSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[updateAccessPoints] wifiState : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", isDoAnimation : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v21

    sput v21, Lcom/android/settings/wifi/WifiSettings;->mVerboseLogging:I

    .line 3721
    packed-switch v20, :pswitch_data_0

    .line 3869
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_0

    .line 3870
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/16 v24, 0x1f4

    cmp-long v21, v22, v24

    if-lez v21, :cond_18

    .line 3871
    const-string v21, "WifiSettings"

    const-string v22, "scroll end"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    goto/16 :goto_0

    .line 3723
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 3724
    const-string v21, "WifiSettings"

    const-string v22, "Skip updateAccessPoints"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3728
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mCurrentAccessPoints:Ljava/util/List;

    .line 3732
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v21

    if-nez v21, :cond_7

    .line 3733
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/wifi/AccessPointListAdapter;->setNotifyOnChange(Z)V

    .line 3734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/wifi/AccessPointListAdapter;->setAccessPointList(Ljava/util/List;)V

    .line 3735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/wifi/AccessPointListAdapter;->setNotifyOnChange(Z)V

    .line 3736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentAccessPoints:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/wifi/AccessPointListAdapter;->setAccessPointList(Ljava/util/List;)V

    .line 3737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v21

    if-nez v21, :cond_3

    .line 3738
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 3739
    const v21, 0x7f0e08e2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 3741
    :cond_6
    const v21, 0x7f0e03be

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 3745
    :cond_7
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 3747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mDeleteAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 3748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/wifi/AccessPointListAdapter;->getAccessPointList()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mLastAccessPoints:Ljava/util/List;

    .line 3749
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLastAccessPoints:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_e

    .line 3750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLastAccessPoints:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wifi/AccessPoint;

    .line 3751
    .local v7, "candidateAccessPoint":Lcom/android/settings/wifi/AccessPoint;
    const/4 v14, 0x0

    .line 3752
    .local v14, "isExist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentAccessPoints:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wifi/AccessPoint;

    .line 3753
    .local v6, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v7, v6}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v21

    if-nez v21, :cond_c

    .line 3757
    invoke-virtual {v7, v6}, Lcom/android/settings/wifi/AccessPoint;->checkIfSame(Landroid/preference/Preference;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 3758
    const/4 v14, 0x1

    .line 3766
    .end local v6    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_9
    :goto_3
    if-nez v14, :cond_a

    .line 3767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mDeleteAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3773
    :cond_a
    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->isDcm:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    const-string v21, "CMCC"

    sget-object v22, Lcom/android/settings/Utils;->CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 3774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mDeleteAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3749
    :cond_b
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 3762
    .restart local v6    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_c
    invoke-virtual {v7, v6}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v21

    if-gez v21, :cond_8

    goto :goto_3

    .line 3777
    .end local v6    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_d
    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->isMaliciousHotspotDetectionAP(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 3779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mDeleteAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getSBlacklist()Ljava/lang/String;

    move-result-object v19

    .line 3782
    .local v19, "sBlacklist":Ljava/lang/String;
    if-eqz v19, :cond_b

    const-string v21, ""

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 3783
    const-string v21, "WifiSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "wwwSBlacklist : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    const/16 v24, 0x20

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3788
    .end local v7    # "candidateAccessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "isExist":Z
    .end local v19    # "sBlacklist":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 3789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInsertAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 3790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentAccessPoints:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wifi/AccessPoint;

    .line 3791
    .restart local v7    # "candidateAccessPoint":Lcom/android/settings/wifi/AccessPoint;
    const/4 v14, 0x0

    .line 3792
    .restart local v14    # "isExist":Z
    const/4 v12, 0x0

    .line 3793
    .local v12, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLastAccessPoints:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wifi/AccessPoint;

    .line 3794
    .restart local v6    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 3795
    const/4 v14, 0x1

    .line 3809
    .end local v6    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_10
    :goto_7
    if-nez v14, :cond_f

    .line 3810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInsertAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3798
    .restart local v6    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_11
    invoke-virtual {v7, v6}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v21

    if-nez v21, :cond_12

    .line 3799
    invoke-virtual {v7, v6}, Lcom/android/settings/wifi/AccessPoint;->checkIfSame(Landroid/preference/Preference;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 3800
    const/4 v14, 0x1

    .line 3801
    goto :goto_7

    .line 3804
    :cond_12
    invoke-virtual {v7, v6}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v21

    if-ltz v21, :cond_10

    .line 3807
    add-int/lit8 v12, v12, 0x1

    .line 3808
    goto :goto_6

    .line 3815
    .end local v6    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v7    # "candidateAccessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "index":I
    .end local v14    # "isExist":Z
    :cond_13
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3816
    .local v15, "itemPositionsAfterInsertion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-eqz v21, :cond_15

    .line 3817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3818
    const/4 v9, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_15

    .line 3819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPosList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3820
    .local v13, "insertPosition":I
    const/16 v17, 0x0

    .line 3821
    .local v17, "k":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_14

    .line 3822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    if-le v13, v0, :cond_14

    .line 3823
    add-int/lit8 v17, v17, 0x1

    .line 3821
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 3827
    :cond_14
    sub-int v13, v13, v17

    .line 3828
    add-int v21, v13, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3818
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 3834
    .end local v13    # "insertPosition":I
    .end local v16    # "j":I
    .end local v17    # "k":I
    :cond_15
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-nez v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-nez v21, :cond_17

    .line 3835
    const-string v21, "WifiSettings"

    const-string v22, "updateAccessPoints itemPositionsAfterInsertion, itemPositionsAfterDelete size : 0"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/wifi/AccessPointListAdapter;->setNotifyOnChange(Z)V

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/wifi/AccessPointListAdapter;->setAccessPointList(Ljava/util/List;)V

    .line 3838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/wifi/AccessPointListAdapter;->setNotifyOnChange(Z)V

    .line 3839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentAccessPoints:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/wifi/AccessPointListAdapter;->setAccessPointList(Ljava/util/List;)V

    .line 3840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v21

    if-nez v21, :cond_3

    .line 3841
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    .line 3842
    const v21, 0x7f0e08e2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 3844
    :cond_16
    const v21, 0x7f0e03be

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 3848
    :cond_17
    const-string v21, "WifiSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateAccessPoints itemPositionsAfterInsertion size : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", itemPositionsAfterDelete size : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->itemPositionsAfterDelete:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->setInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3850
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->mIsRunningAnimation:Z

    goto/16 :goto_1

    .line 3855
    .end local v9    # "i":I
    .end local v15    # "itemPositionsAfterInsertion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v21

    if-eqz v21, :cond_3

    .line 3856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/wifi/AccessPointListAdapter;->removeall()V

    goto/16 :goto_1

    .line 3861
    :pswitch_2
    const v21, 0x7f0e038c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 3865
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    goto/16 :goto_1

    .line 3873
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v21

    if-lez v21, :cond_0

    .line 3874
    const-string v21, "WifiSettings"

    const-string v22, "force scroll up"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    goto/16 :goto_0

    .line 3721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 7
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v5, 0x2

    .line 4835
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4836
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 4890
    :cond_0
    :goto_0
    return-void

    .line 4840
    :cond_1
    const/4 v2, 0x0

    .line 4849
    .local v2, "prefScreen":Landroid/preference/PreferenceGroup;
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V

    .line 4851
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_2

    sget v3, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    if-eqz v3, :cond_3

    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_5

    .line 4853
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 4858
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4862
    :goto_2
    if-eqz p1, :cond_4

    .line 4863
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 4867
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4869
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 4870
    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 4871
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4883
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_0

    .line 4884
    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->sIsSupportSecWFC:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcUtilsHelper;->isValidSim(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4885
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;->OOBE_WIFI_CONNECTED:Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/tmowfc/wfcutils/StandardDialogs;->showOobeDialog(Landroid/content/Context;Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4855
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 4859
    :catch_0
    move-exception v0

    .line 4860
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiSettings"

    const-string v4, "can\'t get connection info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateWifiState(I)V
    .locals 11
    .param p1, "state"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 5019
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 5020
    .local v6, "activity":Landroid/app/Activity;
    if-eqz v6, :cond_2

    .line 5021
    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 5032
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 5140
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 5141
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 5142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 5143
    :goto_2
    return-void

    .line 5024
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5026
    if-eqz v6, :cond_0

    .line 5027
    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 5034
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 5035
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5036
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5037
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiSettings;->WifiDirectTts(Z)V

    .line 5040
    :cond_3
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5041
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiDirectAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5043
    .local v7, "cr":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 5045
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5046
    const-string v0, "isWifiDirectAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5047
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 5048
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5049
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5050
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->WifiDirectTts(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5060
    :cond_4
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5069
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 5071
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 5072
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 5074
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 5075
    .local v8, "msg":Landroid/os/Message;
    iput v10, v8, Landroid/os/Message;->what:I

    .line 5076
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 5053
    .end local v8    # "msg":Landroid/os/Message;
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 5054
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5055
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5056
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->WifiDirectTts(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 5060
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 5083
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "cr":Landroid/database/Cursor;
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 5085
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5086
    const-string v0, "WifiSettings"

    const-string v3, "TALK BACK ON !!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5087
    iput v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 5089
    :cond_7
    const v0, 0x7f0e038b

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 5093
    :pswitch_2
    const v0, 0x7f0e038c

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 5098
    :pswitch_3
    sput-boolean v4, Lcom/android/settings/wifi/WifiSettings;->mIsWifiStateDisabling:Z

    .line 5099
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 5100
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    .line 5101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 5102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 5103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5105
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->WifiDirectTts(Z)V

    .line 5110
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v0, :cond_9

    .line 5111
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 5113
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v0, :cond_a

    .line 5114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 5115
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 5117
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 5118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5120
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_c

    .line 5121
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 5123
    :cond_c
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 5124
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 5125
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 5127
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 5128
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 5130
    const-string v0, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5131
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    goto/16 :goto_1

    .line 5032
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1916
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    .line 1917
    .local v12, "wifiIsEnabled":Z
    const/4 v11, 0x1

    .line 1921
    .local v11, "p2pActionFlag":I
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    if-nez v2, :cond_0

    .line 1950
    :cond_0
    move v7, v12

    .line 1951
    .local v7, "allowUserProfiles":Z
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1952
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "false"

    aput-object v3, v4, v2

    .line 1953
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1954
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1955
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 1956
    const/4 v2, 0x0

    const-string v3, "getAllowUserProfiles"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1958
    .local v9, "cr":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1960
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1961
    const-string v2, "getAllowUserProfiles"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1962
    .local v8, "columnIndex":I
    if-ltz v8, :cond_1

    .line 1963
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_c

    .line 1964
    const/4 v7, 0x0

    .line 1971
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1976
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "columnIndex":I
    .end local v9    # "cr":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v5, 0x0

    const v13, 0x7f0e03a7

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1986
    const-string v2, "ChinaNalSecurity"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_LOCAL_SECURITY_POLICY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1987
    const/4 v2, 0x0

    const/16 v3, 0xf

    const/4 v5, 0x0

    const v13, 0x7f0e0144

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1992
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const v13, 0x7f0e03ae

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1995
    const-string v2, "KTT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1996
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const v13, 0x7f0e03b0

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2003
    :cond_4
    const/4 v2, 0x0

    const/16 v3, 0x17

    const/4 v5, 0x0

    const v13, 0x7f0e0519

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_d

    const/4 v2, 0x1

    :goto_2
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2014
    const-string v2, "CMCC"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2015
    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v5, 0x0

    const v13, 0x7f0e0b0f

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2019
    :cond_5
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_ADVANCED_MENU:Z

    if-eqz v2, :cond_e

    .line 2020
    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v5, 0x0

    const v13, 0x7f0e03b3

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2074
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 2075
    .local v6, "activity":Landroid/app/Activity;
    if-eqz v6, :cond_7

    .line 2076
    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    .line 2079
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 2080
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 2082
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 2083
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 2085
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_ADVANCED_MENU:Z

    if-eqz v2, :cond_8

    .line 2086
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 2089
    :cond_8
    const/16 v2, 0x17

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 2091
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    .line 2096
    :cond_9
    const-string v2, "VZW"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v2, :cond_a

    .line 2097
    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v5, 0x0

    const v13, 0x7f0e03a9

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    .line 2098
    .local v10, "manageNetwork":Landroid/view/MenuItem;
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2100
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2105
    .end local v10    # "manageNetwork":Landroid/view/MenuItem;
    :cond_a
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    if-eqz v2, :cond_b

    .line 2106
    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v5, 0x0

    const v13, 0x7f0e0d66

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200f2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2115
    :cond_b
    return-void

    .line 1966
    .end local v6    # "activity":Landroid/app/Activity;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "columnIndex":I
    .restart local v9    # "cr":Landroid/database/Cursor;
    :cond_c
    move v7, v12

    goto/16 :goto_0

    .line 1969
    .end local v8    # "columnIndex":I
    :catch_0
    move-exception v2

    .line 1971
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2003
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "cr":Landroid/database/Cursor;
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2023
    :cond_e
    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v5, 0x0

    const v13, 0x7f0e039e

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2029
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v2, :cond_10

    .line 2030
    const/4 v2, 0x0

    const/16 v3, 0xe

    const/4 v5, 0x0

    const v13, 0x7f0e039a

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2034
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isPasspointMenuVisible()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_hotspot20_connected_history"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 2037
    :cond_f
    const/4 v2, 0x0

    const/16 v3, 0x13

    const/4 v5, 0x0

    const v13, 0x7f0e0345

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2043
    :cond_10
    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_MENU_RESET_CONFIGURATION:Z

    if-eqz v2, :cond_11

    .line 2044
    const/4 v2, 0x0

    const/16 v3, 0x18

    const/4 v5, 0x0

    const v13, 0x7f0e035f

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2049
    :cond_11
    sget-boolean v2, Lcom/android/settings/Utils;->HIDE_EXCLUDED_AP_LIST:Z

    if-eqz v2, :cond_12

    .line 2050
    const/4 v2, 0x0

    const/16 v3, 0x1b

    const/4 v5, 0x0

    const v13, 0x7f0e0357

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2055
    :cond_12
    sget-object v2, Lcom/android/settings/Utils;->ENABLE_MENU_IWLAN4:Ljava/lang/String;

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2056
    const/4 v2, 0x0

    const/16 v3, 0x19

    const/4 v5, 0x0

    const v13, 0x7f0e0364

    invoke-interface {p1, v2, v3, v5, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2062
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2063
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 2065
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 2066
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isPasspointMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2068
    const/16 v2, 0x13

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    goto/16 :goto_3
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 5636
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 5637
    return-void
.end method

.method createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 1399
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1400
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 1401
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    .line 1403
    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method forget()V
    .locals 3

    .prologue
    .line 5480
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 5481
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5483
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5517
    :goto_0
    return-void

    .line 5500
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 5503
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5504
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->deleteNetworkFromOffloadDB(Ljava/lang/String;)V

    .line 5507
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5508
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 5516
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 5796
    const v0, 0x7f0e0d74

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1812
    const/16 v0, 0x67

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 3902
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3903
    .local v0, "emptyView":Landroid/widget/TextView;
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v1, :cond_0

    .line 3904
    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3905
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 3906
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f01ed

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3907
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 3909
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    if-eqz v1, :cond_0

    .line 3910
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setEmptyView(Landroid/view/View;)V

    .line 3916
    :cond_0
    return-object v0
.end method

.method insertScanResultLogging()V
    .locals 5

    .prologue
    .line 5521
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 5522
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v1, :cond_0

    .line 5532
    :goto_0
    return-void

    .line 5526
    :cond_0
    const/4 v0, 0x0

    .line 5527
    .local v0, "isHigh":Z
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    .line 5528
    const/4 v0, 0x1

    .line 5531
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v4, "SCNT"

    if-eqz v0, :cond_2

    const-string v2, "HIGH"

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/android/settings/wifi/WifiSettings;->insertLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "LOW"

    goto :goto_1
.end method

.method public isMaliciousHotspotDetectionAP(Ljava/lang/String;)Z
    .locals 10
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3882
    if-nez p1, :cond_1

    .line 3898
    :cond_0
    :goto_0
    return v6

    .line 3885
    :cond_1
    move-object v4, p1

    .line 3886
    .local v4, "val":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    const-string v7, "\""

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "\""

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3887
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3889
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .line 3892
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3893
    .local v3, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3894
    .local v0, "ch":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 3895
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    xor-int/2addr v7, v0

    int-to-char v0, v7

    .line 3894
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3897
    :cond_3
    const-string v7, "%02x"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3898
    .local v1, "checksum":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ne v7, v8, :cond_4

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_2
.end method

.method public isTalkbackPaused()Z
    .locals 2

    .prologue
    .line 5692
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 5694
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 5695
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    .line 5697
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 33
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 803
    invoke-super/range {p0 .. p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 805
    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 806
    const/4 v2, 0x0

    sput v2, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    .line 807
    const/4 v2, 0x0

    sput v2, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 808
    const-string v2, "WifiSettings"

    const-string v5, "vzwViewFlag sets to false, onActivityCreated"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    const-string v2, "nfc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mNfcManager:Landroid/nfc/NfcManager;

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.wifi.direct"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    .line 818
    const-string v2, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 819
    const-string v2, "wifip2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 822
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 838
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 853
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 871
    .local v14, "activity":Landroid/app/Activity;
    if-nez v14, :cond_2

    .line 872
    const-string v2, "WifiSettings"

    const-string v5, " onActivityCreated Activity is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_1
    :goto_0
    return-void

    .line 876
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-eqz v2, :cond_3

    .line 877
    if-eqz v14, :cond_18

    invoke-virtual {v14}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    .line 878
    .local v12, "ab":Landroid/app/ActionBar;
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 880
    .end local v12    # "ab":Landroid/app/ActionBar;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v2, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v5, 0x64

    if-ge v2, v5, :cond_9

    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    if-nez v2, :cond_9

    .line 881
    invoke-virtual {v14}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    .line 882
    .local v13, "actionBar":Landroid/app/ActionBar;
    if-eqz v13, :cond_9

    .line 883
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v2, :cond_1c

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 885
    const v2, 0x7f0e0386

    invoke-virtual {v13, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 887
    new-instance v26, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x2

    const/4 v5, -0x2

    const v6, 0x800015

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v5, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 888
    .local v26, "mLayoutParams":Landroid/app/ActionBar$LayoutParams;
    invoke-super/range {p0 .. p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f04025c

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 889
    .local v25, "mCustomLayout":Landroid/view/View;
    if-eqz v13, :cond_4

    .line 890
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 891
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 893
    :cond_4
    const v2, 0x7f0d05ef

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 896
    new-instance v30, Landroid/util/TypedValue;

    invoke-direct/range {v30 .. v30}, Landroid/util/TypedValue;-><init>()V

    .line 897
    .local v30, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v14}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x11600bd

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v2, v5, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 899
    const/high16 v19, 0x41700000    # 15.0f

    .line 900
    .local v19, "defaultTextSize":F
    const v29, 0x3f99999a    # 1.2f

    .line 901
    .local v29, "maxFontScale":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v18, v0

    .line 903
    .local v18, "curFontScale":F
    cmpl-float v2, v18, v29

    if-lez v2, :cond_5

    .line 904
    move/from16 v18, v29

    .line 907
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v5, 0x1

    mul-float v6, v19, v18

    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 909
    move-object/from16 v0, v30

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_19

    const/16 v24, 0x1

    .line 910
    .local v24, "isThemeDeviceDefaultFamily":Z
    :goto_2
    if-eqz v24, :cond_6

    .line 911
    const/4 v2, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const v6, 0x10102d8

    const/4 v7, 0x0

    invoke-virtual {v14, v2, v5, v6, v7}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 913
    .local v15, "av":Landroid/content/res/TypedArray;
    const/16 v2, 0xd

    const v5, 0x10808ad

    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/wifi/WifiSettings;->mBackgroundResId:I

    .line 915
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "show_button_background"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1a

    .line 917
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->onShowButtonBackgroundChange(Z)V

    .line 925
    .end local v15    # "av":Landroid/content/res/TypedArray;
    :cond_6
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->WifiDirectTts(Z)V

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 956
    .end local v18    # "curFontScale":F
    .end local v19    # "defaultTextSize":F
    .end local v24    # "isThemeDeviceDefaultFamily":Z
    .end local v29    # "maxFontScale":F
    .end local v30    # "outValue":Landroid/util/TypedValue;
    :cond_7
    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 957
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isWifiDirectAllowed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 959
    .local v17, "cr":Landroid/database/Cursor;
    if-eqz v17, :cond_9

    .line 961
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 962
    const-string v2, "isWifiDirectAllowed"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 966
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->WifiDirectTts(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    :cond_8
    :goto_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 988
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v13    # "actionBar":Landroid/app/ActionBar;
    .end local v17    # "cr":Landroid/database/Cursor;
    .end local v25    # "mCustomLayout":Landroid/view/View;
    .end local v26    # "mLayoutParams":Landroid/app/ActionBar$LayoutParams;
    :cond_9
    :goto_5
    const-string v2, "connectivity"

    invoke-virtual {v14, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    .line 990
    .local v16, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz p1, :cond_a

    .line 991
    const-string v2, "edit_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 992
    const-string v2, "wifi_ap_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 993
    const-string v2, "wifi_ap_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 999
    :cond_a
    invoke-static {v14}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v2, :cond_b

    .line 1001
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-direct {v2, v14, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1023
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    .line 1024
    .local v23, "intent":Landroid/content/Intent;
    const-string v2, "wifi_enable_next_on_connect"

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 1028
    const-string v2, "force_show_dialog"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1029
    const-string v2, "force_show_dialog"

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mForceShowDialog:Z

    .line 1034
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v2, :cond_d

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1036
    if-eqz v16, :cond_d

    .line 1037
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v22

    .line 1039
    .local v22, "info":Landroid/net/NetworkInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1044
    .end local v22    # "info":Landroid/net/NetworkInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v2, :cond_e

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v2

    const/high16 v5, 0x1a40000

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1052
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v2, :cond_1d

    .line 1053
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 1058
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v2, :cond_f

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1e

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1062
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->WifiDirectTts(Z)V

    .line 1071
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v2, :cond_11

    .line 1072
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->showSNSEnableDialogOnSetupWizard()V

    .line 1075
    :cond_11
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->sIsSupportSecWFC:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v2, :cond_12

    .line 1076
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v2, :cond_12

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1095
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0d04f8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 1097
    const-string v2, "wifi_start_connect_ssid"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1098
    const-string v2, "wifi_start_connect_ssid"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1115
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    if-eqz v2, :cond_1

    .line 1116
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v2, :cond_1f

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v5, 0x1020004

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1118
    .local v20, "emptyViewForVZW":Landroid/widget/TextView;
    const/high16 v2, 0x41900000    # 18.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1119
    const/16 v2, 0x30

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1120
    const v2, 0x7f0e03aa

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setEmptyView(Landroid/view/View;)V

    .line 1127
    .end local v20    # "emptyViewForVZW":Landroid/widget/TextView;
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v2, :cond_14

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setForcedClick(Z)V

    .line 1132
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v2, :cond_16

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    .line 1135
    .local v21, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0401df

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mMacAddressFooter:Landroid/view/View;

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings;->mMacAddressFooter:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1138
    const/16 v27, 0x0

    .line 1139
    .local v27, "macAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v32

    .line 1140
    .local v32, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v32, :cond_15

    .line 1141
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v27

    .line 1143
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mMacAddressFooter:Landroid/view/View;

    const v5, 0x7f0d049d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 1145
    .local v28, "macAddressTextView":Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .end local v27    # "macAddress":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    .end local v21    # "inflater":Landroid/view/LayoutInflater;
    .end local v28    # "macAddressTextView":Landroid/widget/TextView;
    .end local v32    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 1151
    .local v31, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0c014d

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v5, 0x7f0c00a2

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    const v5, 0x7f0c00b0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    const v5, 0x7f0c00ad

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v8, v2, v5

    .line 1155
    .local v8, "divider_inset_size":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1156
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1157
    .local v4, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v2, :cond_17

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const v5, 0x7f02036a

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1166
    :cond_17
    new-instance v2, Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/android/settings/wifi/AccessPointListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings;->mItemClickListner:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 1170
    new-instance v2, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-direct {v2, v5, v6}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    const/16 v5, 0x258

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->setTransitionDuration(I)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings;->mAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;)V

    goto/16 :goto_0

    .line 877
    .end local v4    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v8    # "divider_inset_size":I
    .end local v16    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v31    # "resources":Landroid/content/res/Resources;
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 909
    .restart local v13    # "actionBar":Landroid/app/ActionBar;
    .restart local v18    # "curFontScale":F
    .restart local v19    # "defaultTextSize":F
    .restart local v25    # "mCustomLayout":Landroid/view/View;
    .restart local v26    # "mLayoutParams":Landroid/app/ActionBar$LayoutParams;
    .restart local v29    # "maxFontScale":F
    .restart local v30    # "outValue":Landroid/util/TypedValue;
    :cond_19
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 920
    .restart local v15    # "av":Landroid/content/res/TypedArray;
    .restart local v24    # "isThemeDeviceDefaultFamily":Z
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->onShowButtonBackgroundChange(Z)V

    goto/16 :goto_3

    .line 969
    .end local v15    # "av":Landroid/content/res/TypedArray;
    .end local v18    # "curFontScale":F
    .end local v19    # "defaultTextSize":F
    .end local v24    # "isThemeDeviceDefaultFamily":Z
    .end local v29    # "maxFontScale":F
    .end local v30    # "outValue":Landroid/util/TypedValue;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v17    # "cr":Landroid/database/Cursor;
    :cond_1b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 972
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->WifiDirectTts(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 976
    :catchall_0
    move-exception v2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v2

    .line 983
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v17    # "cr":Landroid/database/Cursor;
    .end local v25    # "mCustomLayout":Landroid/view/View;
    .end local v26    # "mLayoutParams":Landroid/app/ActionBar$LayoutParams;
    :cond_1c
    const v2, 0x7f0e03a9

    invoke-virtual {v13, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_5

    .line 1055
    .end local v13    # "actionBar":Landroid/app/ActionBar;
    .restart local v16    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v23    # "intent":Landroid/content/Intent;
    :cond_1d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    goto/16 :goto_6

    .line 1063
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_f

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1066
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->WifiDirectTts(Z)V

    goto/16 :goto_7

    .line 1123
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_8

    .line 1145
    .restart local v21    # "inflater":Landroid/view/LayoutInflater;
    .restart local v27    # "macAddress":Ljava/lang/String;
    .restart local v28    # "macAddressTextView":Landroid/widget/TextView;
    .restart local v32    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_20
    const v2, 0x7f0e0691

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_9

    .line 1159
    .end local v21    # "inflater":Landroid/view/LayoutInflater;
    .end local v27    # "macAddress":Ljava/lang/String;
    .end local v28    # "macAddressTextView":Landroid/widget/TextView;
    .end local v32    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v8    # "divider_inset_size":I
    .restart local v31    # "resources":Landroid/content/res/Resources;
    :cond_21
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1160
    .restart local v4    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a
.end method

.method onAddNetworkPressed()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5662
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 5664
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5668
    :goto_0
    return-void

    .line 5665
    :catch_0
    move-exception v0

    .line 5666
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "WifiSettings"

    const-string v2, "Ignore Illegal state exception here."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdvancedMenuPressed()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f0e03b3

    const/4 v2, 0x0

    .line 2524
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 2525
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2542
    :goto_0
    return-void

    .line 2530
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 2531
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 2536
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v0, :cond_2

    .line 2537
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SECSETUP_WIFI_ADVANCED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2539
    :cond_2
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 5159
    const/4 v6, 0x0

    .line 5160
    .local v6, "mController":Lcom/android/settings/wifi/WifiConfigController;
    const/4 v3, 0x0

    .line 5162
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v12, :cond_2

    .line 5163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v6

    .line 5164
    if-eqz v6, :cond_1

    .line 5165
    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 5175
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/settings/wifi/WifiConfigController;->getDialogButton(I)Z

    move-result v5

    .line 5176
    .local v5, "mCanceltoForget":Z
    const-string v12, "VZW"

    sget-object v13, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 5177
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/settings/wifi/WifiConfigController;->getVzwButton(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 5368
    .end local v5    # "mCanceltoForget":Z
    :cond_0
    :goto_0
    return-void

    .line 5167
    :cond_1
    const-string v12, "WifiSettings"

    const-string v13, "onClick() mController is null "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5171
    :cond_2
    const-string v12, "WifiSettings"

    const-string v13, "onClick() mDialog is null "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5179
    .restart local v5    # "mCanceltoForget":Z
    :pswitch_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    goto :goto_0

    .line 5182
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 5183
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5184
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 5185
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0e10af

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5187
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 5191
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    goto :goto_0

    .line 5194
    :pswitch_3
    if-eqz v3, :cond_0

    .line 5195
    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_9

    .line 5196
    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->isNeedtoForgetNetwork()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 5197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    .line 5198
    .local v10, "newNetId":I
    iput v10, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 5199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 5200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v12, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 5202
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v12, v3, v13}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 5203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 5204
    const/4 v12, -0x1

    if-eq v10, v12, :cond_5

    .line 5205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 5207
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 5221
    .end local v10    # "newNetId":I
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 5222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 5225
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 5227
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 5228
    .local v8, "msg":Landroid/os/Message;
    const/4 v12, 0x2

    iput v12, v8, Landroid/os/Message;->what:I

    .line 5229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 5209
    .end local v8    # "msg":Landroid/os/Message;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v12, v3, v13}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 5210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 5211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 5213
    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnect()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 5214
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_6

    .line 5216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 5217
    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 5234
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    .line 5235
    .local v9, "networkId":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_a

    .line 5236
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0e03c6

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5239
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 5240
    iput v9, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 5241
    const v12, 0x7f0e03c5

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 5243
    .local v7, "messageRes":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v7, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 5245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    .line 5251
    .end local v7    # "messageRes":Ljava/lang/String;
    .end local v9    # "networkId":I
    :pswitch_4
    if-nez v3, :cond_b

    .line 5252
    const-string v12, "WifiSettings"

    const-string v13, " config null "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5253
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_e

    .line 5254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 5257
    :cond_b
    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 5259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v12, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 5260
    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->isNeedtoForgetNetwork()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 5261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    .line 5262
    .restart local v10    # "newNetId":I
    iput v10, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 5263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v12, v3, v13}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 5264
    const/4 v12, -0x1

    if-eq v10, v12, :cond_c

    .line 5265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 5266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 5267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 5269
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 5270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto/16 :goto_0

    .line 5273
    .end local v10    # "newNetId":I
    :cond_d
    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnectNetwork()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 5274
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 5275
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 5294
    :cond_e
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v12, :cond_11

    .line 5295
    const-string v12, "WifiSettings"

    const-string v13, "onClick SUBMIT button but, mDialog is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5277
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_10

    .line 5279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 5280
    const/4 v12, 0x0

    iput v12, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 5281
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5283
    :cond_10
    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 5284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 5285
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto :goto_2

    .line 5297
    :cond_11
    if-eqz v3, :cond_14

    iget-object v12, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_14

    .line 5298
    const/4 v2, 0x0

    .line 5299
    .local v2, "caCert":Ljava/lang/String;
    iget-object v12, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    .line 5300
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 5301
    :cond_12
    const-string v12, "WifiSettings"

    const-string v13, "caCert is null or empty!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5302
    sput-object v3, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 5303
    const/16 v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 5306
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 5310
    .end local v2    # "caCert":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v12, v3, v13}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 5311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 5319
    :cond_15
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1a

    .line 5320
    sget-boolean v12, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_16

    .line 5321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_16

    .line 5322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v12

    if-nez v12, :cond_16

    .line 5323
    const-string v12, "WifiSettings"

    const-string v13, "disabling AP..."

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto/16 :goto_0

    .line 5330
    :cond_16
    sget-boolean v12, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_18

    .line 5331
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_18

    .line 5332
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v12

    if-nez v12, :cond_18

    .line 5333
    const-string v12, "WifiSettings"

    const-string v13, "disconnecting AP..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5334
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 5335
    .local v11, "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v11, :cond_17

    .line 5336
    const-string v12, "WifiSettings"

    const-string v13, "selectedConfig == null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5340
    :cond_17
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 5341
    .restart local v8    # "msg":Landroid/os/Message;
    const/16 v12, 0xcb

    iput v12, v8, Landroid/os/Message;->what:I

    .line 5342
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5343
    .local v1, "args":Landroid/os/Bundle;
    const-string v12, "netId"

    iget v13, v11, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5344
    const-string v12, "reason"

    const/16 v13, 0xe

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5345
    iput-object v1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 5352
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v12, :cond_0

    .line 5353
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v12, :cond_19

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_19

    .line 5355
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 5356
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    goto/16 :goto_0

    .line 5358
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    goto/16 :goto_0

    .line 5361
    :cond_1a
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_1b

    .line 5362
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 5363
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    goto/16 :goto_0

    .line 5364
    :cond_1b
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 5365
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    goto/16 :goto_0

    .line 5177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 2839
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_1

    .line 2840
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 2930
    :cond_0
    :goto_0
    return v3

    .line 2842
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2930
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 2844
    :sswitch_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v5, :cond_2

    .line 2845
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    .line 2846
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->setSecBssidWhitelist(Lcom/android/settings/wifi/AccessPoint;)V

    goto :goto_0

    .line 2847
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v4, :cond_3

    .line 2849
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 2851
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2853
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 2858
    :sswitch_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v5, :cond_4

    .line 2859
    const-string v4, "WifiSettings"

    const-string v5, "Invalid network id "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2865
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->deleteNetworkFromOffloadDB(Ljava/lang/String;)V

    goto :goto_0

    .line 2861
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    goto :goto_1

    .line 2872
    :sswitch_2
    sget-boolean v4, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v4, :cond_0

    .line 2873
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2874
    .local v2, "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_5

    .line 2875
    const-string v4, "WifiSettings"

    const-string v5, "selectedConfig == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2879
    :cond_5
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2880
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0xcb

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2881
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2882
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "netId"

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2883
    const-string v4, "reason"

    const/16 v5, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2884
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2885
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 2890
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 2894
    :sswitch_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    .line 2895
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 2900
    :sswitch_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2901
    .restart local v2    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v4, Lcom/android/settings/Utils;->ENABLE_MENU_AUTOJOIN:Z

    if-eqz v4, :cond_0

    .line 2902
    if-nez v2, :cond_6

    .line 2903
    const-string v4, "WifiSettings"

    const-string v5, "selectedConfig == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2907
    :cond_6
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autojoin val for selected AP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2909
    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 2914
    :goto_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2915
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v4, 0x47

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2916
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2917
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v4, "netId"

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2918
    const-string v4, "autojoin"

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2919
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2921
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2922
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    .line 2911
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_7
    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    goto :goto_2

    .line 2842
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0x15 -> :sswitch_5
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 754
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 755
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 756
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v3, :cond_0

    const-string v3, "VZW"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 757
    const-string v3, "manage_network"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    .line 758
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 759
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "firstRun"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiSecSetupActivity;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiPickerDialog;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    .line 767
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiOffloadDialog;

    sput-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    .line 770
    sget v3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    if-nez v3, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "wifi_settings_start_with"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 774
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->isDcm:Z

    .line 776
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 777
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 778
    const-string v3, "com.samsung.android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    .line 780
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mInSecPickerActivity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string v3, "extra_location_services"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 783
    const-string v3, "extra_location_services"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 784
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    .line 790
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 792
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 793
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    .line 798
    .end local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 799
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 25
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 2704
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 2705
    :cond_1
    const-string v2, "WifiSettings"

    const-string v4, "InSecPickerActivity : ignore context menu, in Help mode"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_2
    :goto_0
    return-void

    .line 2711
    .restart local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_3
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_2

    .line 2714
    check-cast p3, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v24, v0

    .line 2715
    .local v24, "selectedPosition":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/AccessPointListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v22

    .line 2716
    .local v22, "selectedAp":Ljava/lang/Object;
    if-nez v22, :cond_4

    .line 2717
    const-string v2, "WifiSettings"

    const-string v4, "Can\'t find selected AccessPoint from the list"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2720
    :cond_4
    check-cast v22, Lcom/android/settings/wifi/AccessPoint;

    .end local v22    # "selectedAp":Ljava/lang/Object;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2736
    const/16 v19, 0x0

    .line 2737
    .local v19, "isVendorAp":Z
    sget-boolean v2, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v2, :cond_5

    .line 2738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v19

    .line 2741
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    .line 2743
    .local v15, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v14, 0x0

    .line 2745
    .local v14, "bCCMode":Z
    const-string v2, "security.mdpp"

    const-string v4, "None"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2746
    .local v20, "mdppProperty":Ljava/lang/String;
    const-string v2, "Enabled"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Enforcing"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2747
    :cond_6
    if-eqz v15, :cond_8

    iget-object v2, v15, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_8

    .line 2748
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    .line 2749
    .local v17, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v16

    .line 2750
    .local v16, "eapMethod":I
    const/4 v2, 0x7

    move/from16 v0, v16

    if-eq v0, v2, :cond_7

    const/16 v2, 0x8

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    .line 2751
    :cond_7
    const/4 v14, 0x1

    .line 2757
    .end local v16    # "eapMethod":I
    .end local v17    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-nez v2, :cond_9

    .line 2759
    if-nez v14, :cond_9

    .line 2760
    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const v7, 0x7f0e03b4

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2764
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/android/settings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 2769
    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_MENU_AUTOJOIN:Z

    if-eqz v2, :cond_a

    .line 2770
    const/4 v2, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x0

    const v7, 0x7f0e03b5

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    .line 2771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 2772
    if-eqz v15, :cond_13

    .line 2773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    iget v2, v15, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_12

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 2780
    :cond_a
    :goto_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_e

    .line 2782
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2783
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 2784
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isEnterpriseNetwork"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2786
    .local v18, "enterpriseCr":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "getAllowUserPolicyChanges"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2788
    .local v13, "allowCr":Landroid/database/Cursor;
    if-eqz v18, :cond_15

    if-eqz v13, :cond_15

    .line 2790
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2791
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2792
    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "getAllowUserPolicyChanges"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2795
    :cond_b
    if-nez v19, :cond_c

    iget v2, v15, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-nez v2, :cond_c

    .line 2796
    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v2, :cond_14

    .line 2797
    const/4 v2, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const v7, 0x7f0e03b7

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2810
    :cond_c
    :goto_3
    if-eqz v18, :cond_d

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2811
    :cond_d
    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2818
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "allowCr":Landroid/database/Cursor;
    .end local v18    # "enterpriseCr":Landroid/database/Cursor;
    :cond_e
    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v2, :cond_f

    .line 2819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_f

    .line 2820
    const/4 v2, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x0

    const v7, 0x7f0e03b8

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2823
    :cond_f
    if-nez v19, :cond_11

    const-string v2, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2824
    :cond_10
    const/4 v2, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const v7, 0x7f0e03b9

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2826
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mNfcManager:Landroid/nfc/NfcManager;

    invoke-virtual {v2}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v21

    .line 2827
    .local v21, "nfcAdapter":Landroid/nfc/NfcAdapter;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    if-nez v2, :cond_2

    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 2828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    .line 2829
    .local v23, "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v23, :cond_2

    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v2, :cond_2

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2831
    const/4 v2, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    const v7, 0x7f0e03ba

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2774
    .end local v21    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    .end local v23    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2776
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 2799
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v13    # "allowCr":Landroid/database/Cursor;
    .restart local v18    # "enterpriseCr":Landroid/database/Cursor;
    :cond_14
    const/4 v2, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const v7, 0x7f0e03b6

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 2803
    :catchall_0
    move-exception v2

    throw v2

    .line 2806
    :cond_15
    if-nez v19, :cond_c

    iget v2, v15, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-nez v2, :cond_c

    .line 2807
    const/4 v2, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const v7, 0x7f0e03b6

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .param p1, "dialogId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 3373
    packed-switch p1, :pswitch_data_0

    .line 3483
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3377
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 3378
    .local v3, "ap":Lcom/android/settings/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 3379
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3380
    new-instance v3, Lcom/android/settings/wifi/AccessPoint;

    .end local v3    # "ap":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 3382
    .restart local v3    # "ap":Lcom/android/settings/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 3384
    iput-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 3388
    :cond_0
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 3390
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v13, v5

    .line 3393
    .local v13, "hideForget":Z
    :goto_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 3394
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 3395
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 3421
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .end local v13    # "hideForget":Z
    :cond_2
    move v13, v11

    .line 3390
    goto :goto_1

    .line 3396
    .restart local v13    # "hideForget":Z
    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    .line 3397
    if-eqz v3, :cond_5

    .line 3398
    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_4

    .line 3399
    new-instance v6, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v8, p0

    move-object v9, v3

    move v10, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_2

    .line 3401
    :cond_4
    new-instance v6, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object v8, p0

    move-object v9, v3

    move v10, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_2

    .line 3404
    :cond_5
    new-instance v6, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object v8, p0

    move-object v9, v3

    move v10, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_2

    .line 3407
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    if-eqz v0, :cond_9

    .line 3408
    if-eqz v3, :cond_8

    .line 3409
    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_7

    .line 3410
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v2, p0

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_2

    .line 3412
    :cond_7
    new-instance v6, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v8, p0

    move-object v9, v3

    invoke-direct/range {v6 .. v12}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_2

    .line 3415
    :cond_8
    new-instance v6, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v8, p0

    move-object v9, v3

    invoke-direct/range {v6 .. v12}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto/16 :goto_2

    .line 3418
    :cond_9
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto/16 :goto_2

    .line 3424
    .end local v3    # "ap":Lcom/android/settings/wifi/AccessPoint;
    .end local v13    # "hideForget":Z
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 3425
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    goto/16 :goto_0

    .line 3429
    :pswitch_3
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 3430
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    goto/16 :goto_0

    .line 3433
    :pswitch_4
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 3435
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto/16 :goto_0

    .line 3437
    :pswitch_5
    new-instance v0, Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSnsSettingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    .line 3438
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->getSnsSettingDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 3440
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_c

    :cond_a
    const-string v0, "FTM"

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ORO"

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "IDE"

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "AMO"

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3443
    :cond_b
    new-instance v0, Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/WifiSnsSettingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    .line 3444
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSettingDialog:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->getSnsSettingDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 3446
    :cond_c
    new-instance v0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    .line 3447
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSnsSetupWizardDialog:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->getWifiSnsSetupWizardDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 3455
    :pswitch_7
    const-string v0, "WifiSettings"

    const-string v1, "WIFI_WARNING_CA_CERT_DIALOG_ID show!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0411

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0410

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01ba

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$27;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$27;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e053d

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$26;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$26;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 3373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1881
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1891
    :cond_0
    :goto_0
    return-void

    .line 1883
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1887
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_2

    .line 1888
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 1890
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 738
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView() -:- mSecSetupWizardMode ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f0238

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 745
    .local v1, "localInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04021a

    .line 746
    .local v0, "layoutResId":I
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1267
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 1272
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 1275
    :cond_0
    return-void
.end method

.method public onHelpMenuPressed()V
    .locals 6

    .prologue
    .line 2482
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2483
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHelpMenuPressed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2501
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 2485
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2486
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2487
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "helphub:section"

    const-string v4, "wifi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2489
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2490
    :catch_0
    move-exception v0

    .line 2491
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2498
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 2499
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2493
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_3
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2494
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2495
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "helphub:appid"

    const-string v4, "wi_fi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2496
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public onHiddenApMenuPressed()V
    .locals 10

    .prologue
    const v3, 0x7f0e0357

    const/4 v2, 0x0

    .line 2611
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 2612
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2619
    :goto_0
    return-void

    .line 2616
    :cond_0
    const-class v0, Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onInstallCertificateMenuPressed()V
    .locals 3

    .prologue
    .line 2582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2586
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "install_as_uid"

    const/16 v2, 0x3f2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2587
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 2588
    return-void
.end method

.method public onIwlanMenuPressed()V
    .locals 13

    .prologue
    .line 2622
    const/4 v4, 0x0

    .line 2625
    .local v4, "isAllowed_4":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.lguplus.common.wificm.mwlan"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 2626
    .local v5, "mWlan":Landroid/content/Context;
    const-string v10, "mwlan"

    const/4 v11, 0x4

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2627
    .local v7, "pref_mWlan_4":Landroid/content/SharedPreferences;
    const-string v10, "mwlan"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2628
    .local v6, "pref_mWlan":Landroid/content/SharedPreferences;
    const-string v10, "permission_allowed_2"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 2629
    const/4 v4, 0x1

    .line 2631
    :cond_0
    const-string v10, "permission_allowed_2"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2634
    .local v3, "isAllowed":Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2635
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    const-string v10, "mwlan_permission_allowed_2"

    invoke-interface {v1, v10, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2636
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2639
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "isAllowed":Z
    .end local v5    # "mWlan":Landroid/content/Context;
    .end local v6    # "pref_mWlan":Landroid/content/SharedPreferences;
    .end local v7    # "pref_mWlan_4":Landroid/content/SharedPreferences;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2640
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0e037e

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2642
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110037

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    .line 2643
    .local v8, "radioButtonItems":[Ljava/lang/CharSequence;
    const/4 v10, 0x1

    if-ne v4, v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    new-instance v11, Lcom/android/settings/wifi/WifiSettings$23;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/WifiSettings$23;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2676
    const v10, 0x7f0e01ba

    new-instance v11, Lcom/android/settings/wifi/WifiSettings$24;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/WifiSettings$24;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2682
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mIwlanDialog:Landroid/app/Dialog;

    .line 2684
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f04023c

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2685
    .local v2, "innerView":Landroid/view/View;
    const v10, 0x7f0d054d

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2686
    .local v9, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0e037f

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2687
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mIwlanDialog:Landroid/app/Dialog;

    check-cast v10, Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v11, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2689
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mIwlanDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 2690
    return-void

    .line 2643
    .end local v2    # "innerView":Landroid/view/View;
    .end local v9    # "textView":Landroid/widget/TextView;
    :cond_1
    const/4 v10, 0x2

    goto :goto_1

    .line 2637
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    .end local v8    # "radioButtonItems":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public onManageNetworkMenuPressed()V
    .locals 10

    .prologue
    const v3, 0x7f0e03a9

    .line 2564
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2565
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "manage_network"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2567
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 2568
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2579
    :goto_0
    return-void

    .line 2574
    :cond_0
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 2135
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 2224
    :cond_0
    :goto_0
    return v1

    .line 2137
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2224
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 2139
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    goto :goto_0

    .line 2142
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWpsPushBtnPressed()V

    goto :goto_0

    .line 2146
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWpsPinBtnPressed()V

    goto :goto_0

    .line 2150
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onHelpMenuPressed()V

    goto :goto_0

    .line 2154
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2155
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$WifiP2pSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2157
    .local v0, "wifiDirectIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2161
    .end local v0    # "wifiDirectIntent":Landroid/content/Intent;
    :sswitch_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2162
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    goto :goto_0

    .line 2166
    :sswitch_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2167
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 2171
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onSmartNetworkSwitchPressed()V

    goto :goto_0

    .line 2185
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 2188
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onManageNetworkMenuPressed()V

    goto :goto_0

    .line 2192
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onSleepPolicyPressed()V

    goto :goto_0

    .line 2200
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onPasspointPressed()V

    goto :goto_0

    .line 2204
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWLANPermissionRequestPressed()V

    goto :goto_0

    .line 2208
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onInstallCertificateMenuPressed()V

    goto :goto_0

    .line 2212
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onResetMenuPressed()V

    goto :goto_0

    .line 2216
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onHiddenApMenuPressed()V

    goto :goto_0

    .line 2220
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onIwlanMenuPressed()V

    goto :goto_0

    .line 2137
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x5 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_5
        0xc -> :sswitch_a
        0xe -> :sswitch_d
        0xf -> :sswitch_c
        0x10 -> :sswitch_3
        0x11 -> :sswitch_9
        0x13 -> :sswitch_b
        0x17 -> :sswitch_7
        0x18 -> :sswitch_e
        0x19 -> :sswitch_10
        0x1b -> :sswitch_f
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onP2pMenuPressed()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f0e03b1

    const/4 v2, 0x0

    .line 2545
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 2546
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2561
    :goto_0
    return-void

    .line 2551
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 2552
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 2558
    :cond_1
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onPasspointPressed()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2389
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_hotspot20_enable"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2391
    .local v2, "mPasspointSelected":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2392
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0e0345

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2393
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110025

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 2394
    .local v3, "radioButtonItems":[Ljava/lang/CharSequence;
    if-ne v2, v5, :cond_0

    :goto_0
    new-instance v6, Lcom/android/settings/wifi/WifiSettings$18;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/wifi/WifiSettings$18;-><init>(Lcom/android/settings/wifi/WifiSettings;I)V

    invoke-virtual {v0, v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2421
    const v5, 0x7f0e01ba

    new-instance v6, Lcom/android/settings/wifi/WifiSettings$19;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettings$19;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointDialog:Landroid/app/Dialog;

    .line 2429
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04023c

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2430
    .local v1, "innerView":Landroid/view/View;
    const v5, 0x7f0d054d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2431
    .local v4, "textView":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2432
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e0347

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2437
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointDialog:Landroid/app/Dialog;

    check-cast v5, Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2438
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2439
    return-void

    .line 2394
    .end local v1    # "innerView":Landroid/view/View;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    .line 2434
    .restart local v1    # "innerView":Landroid/view/View;
    .restart local v4    # "textView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e0346

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1614
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 1617
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1618
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1621
    const-string v5, "WifiSettings"

    const-string v6, "WifiSettings onPause"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_settings_run_foreground"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1629
    const-string v5, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1630
    sput-boolean v8, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsWifiScreen:Z

    .line 1631
    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPause : mIsWifiScreen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsWifiScreen:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mIsbRetryPopup = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v5, :cond_1

    .line 1635
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1638
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1639
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 1641
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1642
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1643
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0x1a

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1645
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1646
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "enable"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1647
    const-string v5, "lock"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1648
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1649
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    if-nez v5, :cond_2

    .line 1650
    const-string v5, "WifiSettings"

    const-string v6, "mSkipScanAssocLock set false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    .line 1655
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1656
    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1659
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-nez v5, :cond_4

    .line 1660
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1661
    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1664
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_5

    .line 1665
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1666
    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 1669
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1670
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v2

    .line 1671
    .local v2, "mController":Lcom/android/settings/wifi/WifiConfigController;
    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->dismissSpinnerPopup()V

    .line 1672
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v5, v10}, Lcom/android/settings/wifi/WifiDialog;->isFocusedView(Z)Z

    .line 1675
    .end local v2    # "mController":Lcom/android/settings/wifi/WifiConfigController;
    :cond_6
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1676
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 1678
    .local v1, "isScreenOn":Z
    sget-boolean v5, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    sget-boolean v5, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-nez v5, :cond_7

    .line 1679
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v5, :cond_7

    .line 1680
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 1681
    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 1685
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1688
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1690
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1693
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mMaliciousHotspotDetectionDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_8

    .line 1694
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mMaliciousHotspotDetectionDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->cancel()V

    .line 1695
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mMaliciousHotspotDetectionDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1698
    :cond_8
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x1

    .line 2937
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v6

    if-ne v6, v5, :cond_0

    .line 2938
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2939
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2942
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    instance-of v6, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_15

    .line 2943
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2944
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-eqz v6, :cond_1

    .line 2946
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2947
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 2948
    .local v4, "mCurrentAP":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v7, :cond_3

    .line 2949
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2950
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    .line 2968
    .end local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-nez v6, :cond_5

    .line 2969
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2970
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 2971
    const-string v6, "ssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2972
    const-string v6, "bssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2973
    const-string v6, "security"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2974
    const-string v6, "frequency"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2975
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v8, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2976
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 3081
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return v5

    .line 2952
    .restart local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2953
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 2954
    const-string v6, "ssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2955
    const-string v6, "bssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2956
    const-string v6, "security"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2957
    const-string v6, "frequency"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2958
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v8, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2959
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 2964
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2965
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    goto/16 :goto_0

    .line 2981
    :cond_5
    const-string v6, "T wifi zone_secure"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2983
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3013
    :cond_6
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v6

    if-nez v6, :cond_c

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v6, v6, Lcom/android/settings/wifi/AccessPoint;->mIsCaptivePortal:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v6, v6, Lcom/android/settings/wifi/AccessPoint;->mIsAuthenticated:Z

    if-nez v6, :cond_c

    .line 3018
    const-string v6, "WifiSettings"

    const-string v7, "START captive portal login activity"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3021
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2986
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v6, "ollehWiFi"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2988
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    .line 2991
    :cond_8
    const-string v6, "olleh GiGA WiFi"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2993
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    .line 2996
    :cond_9
    const-string v6, "U+zone"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2998
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    .line 3001
    :cond_a
    const-string v6, "U+zone_5G"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3003
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    .line 3006
    :cond_b
    const-string v6, "5G_U+zone"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3008
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    .line 3026
    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v3

    .line 3027
    .local v3, "isSupportedSecurity":Z
    if-nez v3, :cond_d

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v6, v8, :cond_2

    .line 3029
    :cond_d
    const-string v6, "VZW"

    sget-object v7, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3030
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v6, :cond_10

    .line 3031
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_e

    .line 3032
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v6, v9}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    .line 3035
    :cond_e
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v6

    if-eq v6, v8, :cond_f

    .line 3036
    const/4 v0, 0x1

    .line 3041
    .local v0, "ManageConnectable":Z
    :goto_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v6, v9}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    .line 3039
    .end local v0    # "ManageConnectable":Z
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "ManageConnectable":Z
    goto :goto_2

    .line 3044
    .end local v0    # "ManageConnectable":Z
    :cond_10
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v6, v9}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    .line 3047
    :cond_11
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v6, v8, :cond_13

    .line 3049
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 3051
    sget-boolean v6, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v6, :cond_12

    .line 3052
    sput-boolean v5, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 3053
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3056
    :cond_12
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3057
    :catch_0
    move-exception v1

    .line 3058
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v6, "WifiSettings"

    const-string v7, "Ignore Illegal state exception here."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3067
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :cond_13
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v6

    if-nez v6, :cond_14

    .line 3068
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e053c

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3072
    :cond_14
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 3073
    :catch_1
    move-exception v1

    .line 3074
    .restart local v1    # "ex":Ljava/lang/IllegalStateException;
    const-string v6, "WifiSettings"

    const-string v7, "Ignore Illegal state exception here."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3079
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    .end local v3    # "isSupportedSecurity":Z
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_15
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v5, 0x13

    const/4 v4, 0x0

    .line 1895
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_ADVANCED_MENU:Z

    if-nez v2, :cond_0

    .line 1896
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_hotspot20_connected_history"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1898
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 1899
    .local v1, "wifiIsEnabled":Z
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1900
    .local v0, "mi":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 1901
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1909
    .end local v0    # "mi":Landroid/view/MenuItem;
    .end local v1    # "wifiIsEnabled":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1910
    return-void

    .line 1903
    .restart local v0    # "mi":Landroid/view/MenuItem;
    .restart local v1    # "wifiIsEnabled":Z
    :cond_1
    const v2, 0x7f0e0345

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onResetMenuPressed()V
    .locals 3

    .prologue
    .line 2592
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2593
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e035f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2594
    const v1, 0x7f0e0361

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2595
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$21;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$21;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2601
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$22;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$22;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2606
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mResetDialog:Landroid/app/Dialog;

    .line 2607
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mResetDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2608
    return-void
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1438
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1439
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 1440
    const-string v8, "WifiSettings"

    const-string v9, "WifiSettings onResume"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v8, :cond_0

    .line 1443
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v8, :cond_a

    .line 1444
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 1451
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    .line 1453
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isSharedDeviceKeyguardOn()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1454
    const-string v8, "WifiSettings"

    const-string v9, "isSharedDeviceKeyguardOn!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x80000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 1459
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_settings_run_foreground"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1462
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v8, :cond_2

    .line 1463
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v8, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 1466
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1469
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1470
    .local v4, "msg":Landroid/os/Message;
    const/16 v8, 0x4a

    iput v8, v4, Landroid/os/Message;->what:I

    .line 1472
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1473
    .local v1, "args":Landroid/os/Bundle;
    const-string v8, "enable"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1474
    const-string v8, "lock"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1475
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1477
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v8

    if-nez v8, :cond_3

    .line 1478
    const-string v8, "WifiSettings"

    const-string v9, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_3
    const-string v8, "KTT"

    sget-object v9, Lcom/android/settings/Utils;->CONFIG_WIFI_AUTOCONNECT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1502
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_skip_auto_conn"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_b

    move v5, v6

    .line 1503
    .local v5, "ret":Z
    :goto_1
    const-string v8, "WifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resume : MANUAL_CONN_ENABLE_QUERY "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    if-eqz v5, :cond_4

    .line 1506
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_skip_auto_conn"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1507
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1508
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1510
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mHandlerForKTCM:Landroid/os/Handler;

    .line 1511
    new-instance v8, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mRunnableForKTCM:Ljava/lang/Runnable;

    .line 1531
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mHandlerForKTCM:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mRunnableForKTCM:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1535
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "ret":Z
    :cond_4
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v8, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1536
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v8, :cond_5

    .line 1537
    sput-boolean v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 1539
    :cond_5
    const-string v8, "VZW"

    sget-object v9, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1540
    sput-boolean v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    .line 1541
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v8, :cond_6

    .line 1543
    sput-boolean v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsWifiScreen:Z

    .line 1544
    const-string v8, "WifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResume : mIsWifiScreen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsWifiScreen:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mIsbRetryPopup = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsbRetryPopup:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_6
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRunningAnimation:Z

    if-eqz v8, :cond_c

    .line 1550
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1551
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1553
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1554
    .local v3, "message":Landroid/os/Message;
    iput v12, v3, Landroid/os/Message;->what:I

    .line 1555
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1563
    .end local v3    # "message":Landroid/os/Message;
    :goto_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v8}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1564
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v8, v7}, Lcom/android/settings/wifi/WifiDialog;->isFocusedView(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1565
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    if-eqz v8, :cond_d

    .line 1566
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 1567
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    new-instance v9, Lcom/android/settings/wifi/WifiSettings$11;

    invoke-direct {v9, p0, v0}, Lcom/android/settings/wifi/WifiSettings$11;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/app/Activity;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1585
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v8}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1586
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    const v9, 0x7f0d0522

    invoke-virtual {v8, v9}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1587
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v8}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1590
    :cond_8
    sget v8, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    if-eqz v8, :cond_e

    .line 1591
    sget v8, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->startWith(I)V

    .line 1592
    sput v7, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 1598
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1599
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    instance-of v8, v8, Lcom/android/settings/wifi/WifiOffloadDialog;

    if-eqz v8, :cond_f

    .line 1600
    sput-boolean v6, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    .line 1601
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiOffloadDialog:Lcom/android/settings/wifi/WifiOffloadDialog;

    if-nez v6, :cond_9

    .line 1602
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wifi/WifiOffloadDialog;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiOffloadDialog:Lcom/android/settings/wifi/WifiOffloadDialog;

    .line 1609
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "mobile_data"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1610
    return-void

    .line 1446
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_a
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/settings/widget/SwitchBar;->show()V

    goto/16 :goto_0

    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_b
    move v5, v7

    .line 1502
    goto/16 :goto_1

    .line 1558
    :cond_c
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints(Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 1581
    :cond_d
    const-string v8, "WifiSettings"

    const-string v9, "[onResume], mDialog.mCurrentFocusView is null  !!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1596
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkStartingDialogWithSettings()V

    goto :goto_4

    .line 1604
    :cond_f
    sput-boolean v7, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    goto :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2119
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2123
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2124
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 2125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 2126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 2127
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2130
    :cond_0
    return-void
.end method

.method public onScanMenuPressed()V
    .locals 1

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 2231
    :cond_0
    return-void
.end method

.method public onShowButtonBackgroundChange(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 2693
    if-eqz p1, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const v1, 0x10808b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2698
    :goto_0
    return-void

    .line 2696
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mBackgroundResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onSleepPolicyPressed()V
    .locals 7

    .prologue
    .line 2234
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2236
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e039e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2238
    const/4 v3, 0x0

    .line 2239
    .local v3, "viewTypeItem":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2240
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2245
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sleep_policy"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2249
    .local v2, "mSleepPolicyCheck":I
    add-int/lit8 v4, v2, -0x2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$12;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$12;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2263
    const v4, 0x7f0e01ba

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$13;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$13;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2271
    .local v1, "mSleepDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2272
    return-void

    .line 2242
    .end local v1    # "mSleepDialog":Landroid/app/Dialog;
    .end local v2    # "mSleepPolicyCheck":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method onSmartNetworkSwitchPressed()V
    .locals 3

    .prologue
    .line 5672
    const/16 v1, 0xe

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5676
    :goto_0
    return-void

    .line 5673
    :catch_0
    move-exception v0

    .line 5674
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WifiSettings"

    const-string v2, "SNS pressed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1354
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 1357
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    if-ne v3, v5, :cond_3

    .line 1358
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1359
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1367
    :cond_0
    :goto_0
    sput-boolean v5, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 1370
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1371
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1373
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 1374
    .local v2, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 1375
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1376
    if-eqz v2, :cond_1

    .line 1377
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1378
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart() :: mLastState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1380
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1381
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart(), wifiNetworkInfo.isConnected() :: mLastInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiOffloadDialog;

    sput-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    .line 1389
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v3, :cond_2

    .line 1390
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 1392
    :cond_2
    return-void

    .line 1363
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1364
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1702
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 1704
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1708
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 1710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1711
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1409
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 1411
    return-void
.end method

.method public onWLANPermissionRequestPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 2274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2276
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0e0144

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2278
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040274

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2280
    .local v1, "innerView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wlan_permission_available"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2282
    .local v2, "mPermissionRequest":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 2283
    .local v3, "radioButtonItems":[Ljava/lang/CharSequence;
    if-ne v2, v4, :cond_0

    :goto_0
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$14;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$14;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2303
    const v4, 0x7f0e01ba

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$15;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$15;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2310
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mPermissionRequestDialog:Landroid/app/Dialog;

    .line 2311
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mPermissionRequestDialog:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2312
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mPermissionRequestDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 2313
    return-void

    .line 2283
    :cond_0
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public onWpsPinBtnPressed()V
    .locals 3

    .prologue
    .line 2506
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 2507
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    .line 2508
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->RemoveNotUsedWpsButton()V

    .line 2509
    return-void
.end method

.method public onWpsPushBtnPressed()V
    .locals 3

    .prologue
    .line 2512
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 2513
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    .line 2514
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->RemoveNotUsedWpsButton()V

    .line 2515
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->loggingWps()V

    .line 2516
    return-void
.end method

.method public setSwitchBarInSetupWizard(Lcom/android/settings/widget/SwitchBar;)V
    .locals 0
    .param p1, "switchbar"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    .line 4923
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 4924
    return-void
.end method

.method public showMaliciousHotspotDialog(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;Ljava/lang/String;)V
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "networkId"    # I
    .param p4, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;
    .param p5, "bssid"    # Ljava/lang/String;

    .prologue
    .line 5936
    move-object v3, p2

    .line 5937
    .local v3, "mConfig":Landroid/net/wifi/WifiConfiguration;
    move v4, p3

    .line 5938
    .local v4, "mNetworkId":I
    move-object v5, p4

    .line 5939
    .local v5, "mListener":Landroid/net/wifi/WifiManager$ActionListener;
    move-object v2, p5

    .line 5940
    .local v2, "mBssid":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5942
    .local v6, "dialog":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0e052b

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5945
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e052c

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5947
    const v7, 0x7f0e042e

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$31;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiSettings$31;-><init>(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5979
    const v0, 0x7f0e052e

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$32;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiSettings$32;-><init>(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5988
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$33;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$33;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 5993
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMaliciousHotspotDetectionDialog:Landroid/app/Dialog;

    .line 5994
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMaliciousHotspotDetectionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5995
    return-void
.end method

.method public showPasspointWarningDialog()V
    .locals 4

    .prologue
    .line 2366
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2367
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e034b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2368
    const v2, 0x7f0e0352

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2369
    const v2, 0x7f0e0f7c

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$16;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSettings$16;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2378
    const v2, 0x7f0e01ba

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$17;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSettings$17;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2384
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2385
    .local v1, "passpointWarningDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2386
    return-void
.end method

.method public speakTTS()V
    .locals 4

    .prologue
    .line 5701
    const v1, 0x7f0e053b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5702
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 5703
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 5705
    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 8
    .param p1, "configController"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 5382
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5384
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_4

    .line 5385
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v4, :cond_0

    .line 5387
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_3

    .line 5388
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 5447
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5448
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 5452
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 5454
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 5455
    .local v2, "msg":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 5456
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5460
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 5391
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 5394
    :cond_4
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v4, :cond_7

    .line 5395
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnect()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5396
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_5

    .line 5398
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 5401
    :cond_5
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5402
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-connect ap id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 5404
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5405
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 5406
    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 5407
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 5408
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v1, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 5410
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnectNetwork()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5411
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 5412
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 5416
    :cond_7
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5417
    sget-object v3, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    const-string v4, "ollehWiFi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    const-string v4, "olleh GiGA WiFi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5418
    :cond_8
    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5423
    :cond_9
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v1, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 5424
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5425
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 5428
    :cond_a
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 5429
    const/4 v0, 0x0

    .line 5430
    .local v0, "caCert":Ljava/lang/String;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 5431
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5432
    :cond_b
    const-string v3, "WifiSettings"

    const-string v4, "caCert is null or empty!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    sput-object v1, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 5434
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 5437
    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5438
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 5441
    .end local v0    # "caCert":Ljava/lang/String;
    :cond_d
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5442
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0
.end method
