.class public Lcom/android/settings/DataUsageSummary;
.super Lcom/android/settings/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DataUsageSummary$StatusReceiver;,
        Lcom/android/settings/DataUsageSummary$PolicySet;,
        Lcom/android/settings/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;,
        Lcom/android/settings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings/DataUsageSummary$ChartFragment;,
        Lcom/android/settings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings/DataUsageSummary$AppItem;,
        Lcom/android/settings/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static bSupportRoamingReduction:Z

.field private static clickAppItem:Z

.field private static isATT:Z

.field public static isFromTrafficStings:Z

.field private static isMTR:Z

.field private static isSPR:Z

.field private static isTMB:Z

.field private static isVZW:Z

.field private static isVoWiFiProvisioned:Z

.field private static isVolteProvisioned:Z

.field private static mAttDeviceHealthEnabled:Z

.field private static mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private static mIsIMSInitialized:Z

.field private static mLimitCheck:Z

.field private static mSMSKeyWork:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSelectDisplayUnit:I

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private final DATA_COMPRESSION_ENABLE_KEY:Ljava/lang/String;

.field private final RESTRICTION_ALWAYS:I

.field private final RESTRICTION_DURING_ROAMING:I

.field private final RESTRICTION_NEVER:I

.field private bg_Restriction_resId:[I

.field private dataUsed:Ljava/lang/String;

.field private handler_loading:Landroid/os/Handler;

.field private isKnoxmode:Z

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

.field private mAirplanemodeObserver:Landroid/database/ContentObserver;

.field private mAlertAtWarning:Landroid/widget/Switch;

.field private mAlertAtWarningListener:Landroid/view/View$OnClickListener;

.field private mAlertAtWarningView:Landroid/view/View;

.field private mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

.field private mAlertTotalSentListener:Landroid/view/View$OnClickListener;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDataRestriction:Landroid/view/View;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrcitSpinner:Landroid/widget/Spinner;

.field private mAppRestrict:Landroid/widget/Switch;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSavedTV:Landroid/widget/TextView;

.field private mAppSavedTVContainer:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private mAutoCalibration:Landroid/widget/Button;

.field private mBinding:Z

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBound:Z

.field private mChart:Lcom/android/settings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mChartSavedTV:Landroid/widget/TextView;

.field private mCheckphonebalance:Landroid/view/View;

.field private mCheckphonebalanceListener:Landroid/view/View$OnClickListener;

.field private mCleaningProgress:Landroid/widget/ProgressBar;

.field private mConfirmAtBoot:Landroid/widget/Switch;

.field private mConfirmAtBootListener:Landroid/view/View$OnClickListener;

.field private mConfirmAtBootView:Landroid/view/View;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleSwitch:Landroid/widget/LinearLayout;

.field private mCycleView:Landroid/view/View;

.field private mDataCompressionEnableListener:Landroid/view/View$OnClickListener;

.field private mDataCompressionSwitchContainer:Landroid/view/View;

.field private mDataCompressionSwitchView:Landroid/widget/Switch;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

.field private mDataMonitoring:Landroid/view/View;

.field private mDataMonitoringListener:Landroid/view/View$OnClickListener;

.field private mDataRoamingView:Landroid/view/View;

.field private mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

.field private mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

.field public mDataUsedEditorFragment:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;

.field private mDetailedSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mDialog:Landroid/app/DialogFragment;

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mDisplayUnitDialog:Landroid/app/AlertDialog;

.field private mDividerView:Landroid/view/View;

.field private mDividerView_land:Landroid/view/View;

.field private mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

.field private mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mEnterChartListener:Landroid/view/View$OnClickListener;

.field private mFileParser:Lcom/android/settings/trafficmanager/XmlParser;

.field private mGraphFreeColor:I

.field private mGraphLineColor:I

.field private mGraphOccupiedColor:I

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/ViewGroup;

.field private mIndexNum:I

.field private mInsetSide:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentTab:Ljava/lang/String;

.field mIsChartFragment:Z

.field private mIsDataCompressionEnabled:Z

.field private mIsSupportDataCompression:Z

.field private mLifedata_menu:Landroid/view/View;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLoadFinihsed:Z

.field private mManualCalibration:Landroid/widget/Button;

.field private mManualCalibrationListener:Landroid/view/View$OnClickListener;

.field private mManualCalibrationView:Landroid/view/View;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mOccupiedRam:Landroid/widget/TextView;

.field private mOccupiedRam_land:Landroid/widget/TextView;

.field private mOperatorSet:Landroid/view/View;

.field private mOperatorSetListener:Landroid/view/View$OnClickListener;

.field private mPCOSettingObserver:Landroid/database/ContentObserver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPieChartInfoLayout:Landroid/view/View;

.field private mPieChartInfoLayout_land:Landroid/view/View;

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRamFree:Landroid/widget/TextView;

.field private mRamFreePercent:Landroid/widget/TextView;

.field private mRamFreePercent_land:Landroid/widget/TextView;

.field private mRamFree_land:Landroid/widget/TextView;

.field private mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;

.field private mRelativeLayoutRaminfo:Landroid/view/View;

.field private mRelativeLayoutRaminfo_land:Landroid/view/View;

.field private mResInstance:Landroid/content/res/Resources;

.field private mRestrcitAppDataListener:Landroid/view/View$OnClickListener;

.field private mRestrcitNetwork:Landroid/view/View;

.field private mRestrcitNetworkListener:Landroid/view/View$OnClickListener;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

.field private mSSCListener:Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;

.field private mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

.field private mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

.field private mSavedIDlist:[Ljava/lang/String;

.field private mSavedTV:Landroid/widget/TextView;

.field private mSavedTVLand:Landroid/widget/TextView;

.field private mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;

.field private mSavingStateHandler:Landroid/os/Handler;

.field private mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

.field private mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShowAppImmediatePkg:Ljava/lang/String;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTSCListener:Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTemplate:Landroid/net/NetworkTemplate;

.field private mTickImage:Landroid/widget/ImageView;

.field private mTickImageBg:Landroid/widget/ImageView;

.field private mToddlermodeObserver:Landroid/database/ContentObserver;

.field private mTopupphonebalance:Landroid/view/View;

.field private mTopupphonebalanceListener:Landroid/view/View$OnClickListener;

.field private mTotalReceive_icon:Landroid/widget/ImageView;

.field private mTotalReceive_menu:Landroid/view/View;

.field private mTotalSent_icon:Landroid/widget/ImageView;

.field private mTotalSent_menu:Landroid/view/View;

.field private mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

.field private mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

.field private mUpdateSavingStateRunnable:Ljava/lang/Runnable;

.field private mUsageSummary:Landroid/widget/TextView;

.field private mUseDataTotalPercent:Landroid/widget/TextView;

.field private mUseDataTotalPercent_land:Landroid/widget/TextView;

.field private mUsedText:Landroid/widget/TextView;

.field private mUsedText_land:Landroid/widget/TextView;

.field private mVertifyTraffic:Landroid/widget/Button;

.field private mVertifyTrafficHandler:Landroid/os/Handler;

.field private mVertifyTrafficListener:Landroid/view/View$OnClickListener;

.field private mVertifyTraffic_land:Landroid/widget/Button;

.field private mlifetimeMessenger:Landroid/os/Messenger;

.field private mtvTotalRam:Landroid/widget/TextView;

.field private mtvTotalRam_land:Landroid/widget/TextView;

.field private rilHandler:Landroid/os/Handler;

.field private wifiCycleDuration:J

.field private wifiCycleEnd:J

.field private wificyclestart:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 345
    sput-object v2, Lcom/android/settings/DataUsageSummary;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 346
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isVolteProvisioned:Z

    .line 347
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isVoWiFiProvisioned:Z

    .line 348
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->mIsIMSInitialized:Z

    .line 367
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/DataUsageSummary;->mLimitCheck:Z

    .line 530
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    .line 533
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    .line 536
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isTMB:Z

    .line 539
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    .line 541
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isATT:Z

    .line 544
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    .line 548
    sput v1, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    .line 552
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->bSupportRoamingReduction:Z

    .line 555
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->clickAppItem:Z

    .line 569
    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isFromTrafficStings:Z

    .line 615
    sput-object v2, Lcom/android/settings/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;

    .line 4200
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 4201
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    .line 5891
    new-instance v0, Lcom/android/settings/DataUsageSummary$41;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$41;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 289
    invoke-direct {p0}, Lcom/android/settings/HighlightingFragment;-><init>()V

    .line 380
    iput v3, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    .line 394
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mChartSavedTV:Landroid/widget/TextView;

    .line 395
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    .line 396
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSavedTVLand:Landroid/widget/TextView;

    .line 399
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    .line 400
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    .line 401
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    .line 402
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    .line 403
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSavedTV:Landroid/widget/TextView;

    .line 404
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    .line 405
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

    .line 406
    const-string v0, "data_compression_enable_key"

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->DATA_COMPRESSION_ENABLE_KEY:Ljava/lang/String;

    .line 419
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    .line 422
    const-wide v0, 0x90321000L

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary;->wifiCycleDuration:J

    .line 423
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    .line 424
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary;->wificyclestart:J

    .line 438
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    .line 443
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    .line 471
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 472
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 477
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    .line 483
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 484
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 503
    iput v3, p0, Lcom/android/settings/DataUsageSummary;->RESTRICTION_NEVER:I

    .line 504
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/DataUsageSummary;->RESTRICTION_ALWAYS:I

    .line 505
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/DataUsageSummary;->RESTRICTION_DURING_ROAMING:I

    .line 506
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->bg_Restriction_resId:[I

    .line 522
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 523
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 527
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    .line 566
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    .line 604
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mLoadFinihsed:Z

    .line 611
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->dataUsed:Ljava/lang/String;

    .line 616
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mFileParser:Lcom/android/settings/trafficmanager/XmlParser;

    .line 617
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;

    .line 618
    new-instance v0, Lcom/android/settings/DataUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$1;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mVertifyTrafficHandler:Landroid/os/Handler;

    .line 740
    new-instance v0, Lcom/android/settings/DataUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$2;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 750
    new-instance v0, Lcom/android/settings/DataUsageSummary$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$3;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    .line 759
    new-instance v0, Lcom/android/settings/DataUsageSummary$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$4;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPCOSettingObserver:Landroid/database/ContentObserver;

    .line 798
    new-instance v0, Lcom/android/settings/DataUsageSummary$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$5;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    .line 805
    new-instance v0, Lcom/android/settings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$6;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 834
    new-instance v0, Lcom/android/settings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$7;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->handler_loading:Landroid/os/Handler;

    .line 2111
    new-instance v0, Lcom/android/settings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$13;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 2135
    new-instance v0, Lcom/android/settings/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$14;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 3107
    new-instance v0, Lcom/android/settings/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$17;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

    .line 3122
    new-instance v0, Lcom/android/settings/DataUsageSummary$18;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$18;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

    .line 3137
    new-instance v0, Lcom/android/settings/DataUsageSummary$19;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$19;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 3254
    new-instance v0, Lcom/android/settings/DataUsageSummary$20;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$20;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    .line 3268
    new-instance v0, Lcom/android/settings/DataUsageSummary$21;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$21;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 3303
    new-instance v0, Lcom/android/settings/DataUsageSummary$22;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$22;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mVertifyTrafficListener:Landroid/view/View$OnClickListener;

    .line 3453
    new-instance v0, Lcom/android/settings/DataUsageSummary$23;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$23;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEnterChartListener:Landroid/view/View$OnClickListener;

    .line 3461
    new-instance v0, Lcom/android/settings/DataUsageSummary$24;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$24;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mRestrcitNetworkListener:Landroid/view/View$OnClickListener;

    .line 3475
    new-instance v0, Lcom/android/settings/DataUsageSummary$25;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$25;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mManualCalibrationListener:Landroid/view/View$OnClickListener;

    .line 3496
    new-instance v0, Lcom/android/settings/DataUsageSummary$26;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$26;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataMonitoringListener:Landroid/view/View$OnClickListener;

    .line 3524
    new-instance v0, Lcom/android/settings/DataUsageSummary$27;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$27;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mOperatorSetListener:Landroid/view/View$OnClickListener;

    .line 3554
    new-instance v0, Lcom/android/settings/DataUsageSummary$28;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$28;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    .line 3573
    new-instance v0, Lcom/android/settings/DataUsageSummary$29;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$29;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalanceListener:Landroid/view/View$OnClickListener;

    .line 3582
    new-instance v0, Lcom/android/settings/DataUsageSummary$30;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$30;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalanceListener:Landroid/view/View$OnClickListener;

    .line 3592
    new-instance v0, Lcom/android/settings/DataUsageSummary$31;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$31;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    .line 3614
    new-instance v0, Lcom/android/settings/DataUsageSummary$32;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$32;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    .line 3637
    new-instance v0, Lcom/android/settings/DataUsageSummary$33;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$33;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 3653
    new-instance v0, Lcom/android/settings/DataUsageSummary$34;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$34;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mRestrcitAppDataListener:Landroid/view/View$OnClickListener;

    .line 3693
    new-instance v0, Lcom/android/settings/DataUsageSummary$35;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$35;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3708
    new-instance v0, Lcom/android/settings/DataUsageSummary$36;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$36;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 3984
    new-instance v0, Lcom/android/settings/DataUsageSummary$37;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$37;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 4037
    new-instance v0, Lcom/android/settings/DataUsageSummary$38;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$38;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 4131
    new-instance v0, Lcom/android/settings/DataUsageSummary$39;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$39;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 4661
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    .line 6041
    new-instance v0, Lcom/android/settings/DataUsageSummary$42;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$42;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 6122
    new-instance v0, Lcom/android/settings/DataUsageSummary$43;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$43;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    .line 6153
    new-instance v0, Lcom/android/settings/DataUsageSummary$44;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$44;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->rilHandler:Landroid/os/Handler;

    .line 6186
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mlifetimeMessenger:Landroid/os/Messenger;

    .line 6754
    new-instance v0, Lcom/android/settings/DataUsageSummary$45;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$45;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataCompressionEnableListener:Landroid/view/View$OnClickListener;

    .line 6848
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSavingStateHandler:Landroid/os/Handler;

    .line 6849
    new-instance v0, Lcom/android/settings/DataUsageSummary$46;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$46;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUpdateSavingStateRunnable:Ljava/lang/Runnable;

    .line 6889
    new-instance v0, Lcom/android/settings/DataUsageSummary$47;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$47;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;

    .line 6918
    new-instance v0, Lcom/android/settings/DataUsageSummary$48;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$48;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSSCListener:Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;

    .line 6946
    new-instance v0, Lcom/android/settings/DataUsageSummary$49;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$49;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTSCListener:Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    return-void

    .line 506
    nop

    :array_0
    .array-data 4
        0x7f0e16fa
        0x7f0e16fb
        0x7f0e16fc
    .end array-data
.end method

.method private static SMSKeyWordParse()V
    .locals 7

    .prologue
    .line 6609
    const-string v4, "DataUsage/LPF"

    const-string v5, "SMSKeyWordParse()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6610
    const-string v3, "/system/csc/trafficmanager.xml"

    .line 6611
    .local v3, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 6613
    .local v1, "mFileParser":Lcom/android/settings/trafficmanager/XmlParser;
    :try_start_0
    new-instance v2, Lcom/android/settings/trafficmanager/XmlParser;

    invoke-direct {v2, v3}, Lcom/android/settings/trafficmanager/XmlParser;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6614
    .end local v1    # "mFileParser":Lcom/android/settings/trafficmanager/XmlParser;
    .local v2, "mFileParser":Lcom/android/settings/trafficmanager/XmlParser;
    if-eqz v2, :cond_0

    .line 6615
    :try_start_1
    invoke-virtual {v2}, Lcom/android/settings/trafficmanager/XmlParser;->ParserFile()V

    .line 6616
    invoke-virtual {v2}, Lcom/android/settings/trafficmanager/XmlParser;->getXmlValue()Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/android/settings/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v1, v2

    .line 6621
    .end local v2    # "mFileParser":Lcom/android/settings/trafficmanager/XmlParser;
    .restart local v1    # "mFileParser":Lcom/android/settings/trafficmanager/XmlParser;
    :goto_0
    return-void

    .line 6618
    :catch_0
    move-exception v0

    .line 6619
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "DataUsage/LPF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6618
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mFileParser":Lcom/android/settings/trafficmanager/XmlParser;
    .restart local v2    # "mFileParser":Lcom/android/settings/trafficmanager/XmlParser;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "mFileParser":Lcom/android/settings/trafficmanager/XmlParser;
    .restart local v1    # "mFileParser":Lcom/android/settings/trafficmanager/XmlParser;
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/trafficmanager/TrafficDataSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/trafficmanager/TrafficDataSummary;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DataUsageSummary;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # F

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setDonut(F)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/net/ChartData;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/DataUsageSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateSavedDataCircleView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;)Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/DataUsageSummary;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/DataUsageSummary;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DataUsageSummary;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/DataUsageSummary;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/DataUsageSummary;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/settings/DataUsageSummary;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/DataUsageSummary;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->changeRoamingPolicyIfNeeded(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/DataUsageSummary;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->bg_Restriction_resId:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DataUsageSummary;Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/DataUsageSummary;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/DataUsageSummary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/settings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Landroid/app/DialogFragment;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settings/DataUsageSummary;)Landroid/app/enterprise/RestrictionPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    return v0
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    return v0
.end method

.method static synthetic access$4600()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isTMB:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/settings/DataUsageSummary;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mVertifyTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$5000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/android/settings/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$StatusReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$StatusReceiver;)Lcom/android/settings/DataUsageSummary$StatusReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/DataUsageSummary$StatusReceiver;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/settings/DataUsageSummary;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/settings/DataUsageSummary;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->resetTimeData(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$6200(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$CycleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$6600()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->clickAppItem:Z

    return v0
.end method

.method static synthetic access$6602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 289
    sput-boolean p0, Lcom/android/settings/DataUsageSummary;->clickAppItem:Z

    return p0
.end method

.method static synthetic access$6700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$AppItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;)Lcom/android/settings/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/DataUsageSummary$AppItem;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/datasaving/DataSavingHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 289
    invoke-static {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/DataUsageSummary;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # F

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setColorOnStatus(F)V

    return-void
.end method

.method static synthetic access$8000(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 289
    invoke-static {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->backFromChart()V

    return-void
.end method

.method static synthetic access$8300()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isVolteProvisioned:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8502(Lcom/android/settings/DataUsageSummary;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/android/settings/DataUsageSummary;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->getTimeData(II)V

    return-void
.end method

.method static synthetic access$8702(Lcom/android/settings/DataUsageSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/settings/DataUsageSummary;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # [B

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setSummaryfortimedata([B)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateSavingState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->setTrafficText()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDataCompressionSwitchView()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateSavedTvState()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->updateChartSavedTV(Z)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->updateAppSavedTVContainer(Z)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/settings/DataUsageSummary;)Lcom/opera/max/sdk/saving/IStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;

    return-object v0
.end method

.method private addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "isMultiSim"    # Z

    .prologue
    const/4 v7, 0x0

    .line 6254
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 6255
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {p1, v4}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6256
    if-eqz p3, :cond_1

    .line 6257
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    .line 6258
    .local v1, "num":I
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subInfo.getSimSlotIndex()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->toString()Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6259
    const/4 v2, 0x0

    .line 6260
    .local v2, "simIcon":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 6261
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/DataUsageSummary;->mIndexNum:I

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "simIcon":Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 6262
    .restart local v2    # "simIcon":Landroid/widget/ImageView;
    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6263
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 6264
    .local v0, "SCALE":F
    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v0

    float-to-int v3, v4

    .line 6265
    .local v3, "tab_icon_padding":I
    invoke-virtual {v2, v7, v7, v3, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 6266
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6267
    iget v4, p0, Lcom/android/settings/DataUsageSummary;->mIndexNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/DataUsageSummary;->mIndexNum:I

    .line 6276
    .end local v0    # "SCALE":F
    .end local v1    # "num":I
    .end local v2    # "simIcon":Landroid/widget/ImageView;
    .end local v3    # "tab_icon_padding":I
    :cond_0
    :goto_0
    return-void

    .line 6269
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const v6, 0x7f0e0c7f

    invoke-direct {p0, v4, v6}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method private backFromChart()V
    .locals 2

    .prologue
    .line 4663
    const-string v0, "wifi"

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4664
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4665
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 4668
    :cond_0
    return-void
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 2050
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 2054
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 2055
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private changeRoamingPolicyIfNeeded(I)V
    .locals 8
    .param p1, "policy"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5742
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v3, v4, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 5743
    .local v3, "uid":I
    const/4 v4, 0x3

    new-array v1, v4, [Lcom/android/settings/DataUsageSummary$PolicySet;

    .line 5744
    .local v1, "policy_set":[Lcom/android/settings/DataUsageSummary$PolicySet;
    new-instance v4, Lcom/android/settings/DataUsageSummary$PolicySet;

    const/16 v5, 0x1001

    invoke-direct {v4, p0, v6, v5}, Lcom/android/settings/DataUsageSummary$PolicySet;-><init>(Lcom/android/settings/DataUsageSummary;II)V

    aput-object v4, v1, v6

    .line 5745
    new-instance v4, Lcom/android/settings/DataUsageSummary$PolicySet;

    invoke-direct {v4, p0, v7, v6}, Lcom/android/settings/DataUsageSummary$PolicySet;-><init>(Lcom/android/settings/DataUsageSummary;II)V

    aput-object v4, v1, v7

    .line 5746
    const/4 v4, 0x2

    new-instance v5, Lcom/android/settings/DataUsageSummary$PolicySet;

    invoke-direct {v5, p0, v6, v6}, Lcom/android/settings/DataUsageSummary$PolicySet;-><init>(Lcom/android/settings/DataUsageSummary;II)V

    aput-object v5, v1, v4

    .line 5748
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v4, v3}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v4

    and-int/lit8 v0, v4, 0x1

    .line 5749
    .local v0, "bgDataPolicy_cur":I
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getRoamingReduction(I)I

    move-result v2

    .line 5750
    .local v2, "roamingPolicy_cur":I
    aget-object v4, v1, p1

    iget v4, v4, Lcom/android/settings/DataUsageSummary$PolicySet;->bgDataPolicy:I

    if-eq v0, v4, :cond_0

    .line 5751
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    aget-object v5, v1, p1

    iget v5, v5, Lcom/android/settings/DataUsageSummary$PolicySet;->bgDataPolicy:I

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 5752
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bgDataPolicy_cur policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setUidPolicy("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, p1

    iget v6, v6, Lcom/android/settings/DataUsageSummary$PolicySet;->bgDataPolicy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5755
    :cond_0
    const/16 v4, 0x1002

    if-eq v2, v4, :cond_1

    aget-object v4, v1, p1

    iget v4, v4, Lcom/android/settings/DataUsageSummary$PolicySet;->roamingPolicy:I

    if-eq v2, v4, :cond_1

    .line 5756
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    aget-object v5, v1, p1

    iget v5, v5, Lcom/android/settings/DataUsageSummary$PolicySet;->roamingPolicy:I

    invoke-virtual {v4, v3, v5}, Landroid/net/ConnectivityManager;->setRoamingReduction(II)V

    .line 5757
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roamingPolicy_cur policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setRoamingReduction("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, p1

    iget v6, v6, Lcom/android/settings/DataUsageSummary$PolicySet;->roamingPolicy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5760
    :cond_1
    return-void
.end method

.method public static colorToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 6572
    const-string v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 5455
    const-string v3, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 5456
    .local v1, "template":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_1

    .line 5457
    const-string v3, "subscription"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 5459
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5477
    .end local v0    # "subId":I
    :cond_0
    :goto_0
    return-object v2

    .line 5465
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 5471
    :pswitch_1
    const-string v2, "mobile"

    goto :goto_0

    .line 5467
    :pswitch_2
    const-string v2, "3g"

    goto :goto_0

    .line 5469
    :pswitch_3
    const-string v2, "4g"

    goto :goto_0

    .line 5473
    :pswitch_4
    const-string v2, "ent1"

    goto :goto_0

    .line 5475
    :pswitch_5
    const-string v2, "wifi"

    goto :goto_0

    .line 5465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private connectToRilService_lifetime()V
    .locals 4

    .prologue
    .line 6074
    const-string v1, "DataUsage"

    const-string v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6075
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6076
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6077
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 6078
    return-void
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 2032
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2047
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2039
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2040
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2041
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2043
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 2044
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 2045
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 2046
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v4, 0x0

    .line 6655
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v3, v4

    .line 6665
    :cond_1
    :goto_0
    return-object v3

    .line 6656
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 6657
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    if-nez v2, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 6658
    :cond_3
    array-length v0, v2

    .line 6659
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 6660
    aget-object v3, v2, v1

    .line 6661
    .local v3, "policy":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_4

    iget-object v5, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6659
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_5
    move-object v3, v4

    .line 6665
    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 4205
    const v8, 0x10010

    .line 4207
    .local v8, "flags":I
    sget-object v9, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 4208
    :try_start_0
    sget-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4209
    sget-object v1, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 4211
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    const v10, 0x3c23d70a    # 0.01f

    const/high16 v5, 0x44800000    # 1024.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3950
    long-to-float v1, p1

    .line 3951
    .local v1, "result":F
    const v2, 0x7f0e107b

    .line 3952
    .local v2, "suffix":I
    cmpl-float v4, v1, v7

    if-lez v4, :cond_0

    .line 3953
    div-float/2addr v1, v5

    .line 3954
    cmpl-float v4, v1, v7

    if-lez v4, :cond_0

    .line 3955
    div-float/2addr v1, v5

    .line 3956
    cmpl-float v4, v1, v7

    if-lez v4, :cond_0

    .line 3957
    div-float/2addr v1, v5

    .line 3962
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    .line 3963
    const-string v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3972
    .local v3, "value":Ljava/lang/String;
    :goto_0
    const-string v0, ""

    .line 3973
    .local v0, "lessthan":Ljava/lang/String;
    cmpl-float v4, v1, v7

    if-lez v4, :cond_1

    cmpg-float v4, v1, v10

    if-gez v4, :cond_1

    .line 3974
    const-string v0, "<"

    .line 3976
    :cond_1
    cmpg-float v4, v1, v10

    if-gez v4, :cond_2

    .line 3977
    const-string v3, "0.01"

    .line 3979
    :cond_2
    cmpl-float v4, v1, v7

    if-nez v4, :cond_3

    const-string v3, "0.00"

    .line 3980
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e107f

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    aput-object v3, v6, v9

    const/4 v7, 0x2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3964
    .end local v0    # "lessthan":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    .line 3965
    const-string v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3966
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    .line 3967
    const-string v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3969
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    const-string v4, "%.0f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private static formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    const/high16 v11, 0x44800000    # 1024.0f

    const v10, 0x3c23d70a    # 0.01f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3918
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    long-to-float v1, p1

    .line 3920
    .local v1, "result":F
    const v2, 0x7f0e107c

    .line 3921
    .local v2, "suffix":I
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "suffix: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    .line 3923
    div-float/2addr v1, v11

    .line 3924
    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    .line 3925
    div-float/2addr v1, v11

    .line 3927
    :cond_0
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    .line 3930
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3938
    .local v3, "value":Ljava/lang/String;
    :goto_0
    const-string v0, ""

    .line 3939
    .local v0, "lessthan":Ljava/lang/String;
    cmpl-float v4, v1, v9

    if-lez v4, :cond_1

    cmpg-float v4, v1, v10

    if-gez v4, :cond_1

    .line 3940
    const-string v0, "<"

    .line 3942
    :cond_1
    cmpg-float v4, v1, v10

    if-gez v4, :cond_2

    .line 3943
    const-string v3, "0.01"

    .line 3945
    :cond_2
    cmpl-float v4, v1, v9

    if-nez v4, :cond_3

    const-string v3, "0.00"

    .line 3946
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e107f

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    const/4 v7, 0x2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3931
    .end local v0    # "lessthan":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    .line 3932
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3933
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    .line 3934
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3936
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    const-string v4, "%.0f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4112
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 4113
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 4114
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v3, "test.subscriberid"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4116
    .local v1, "retVal":Ljava/lang/String;
    return-object v1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 4125
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 4126
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 4128
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 2809
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 2810
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 2811
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSMSKeyWordValue()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6624
    sget-object v0, Lcom/android/settings/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 6625
    sget-object v0, Lcom/android/settings/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;

    .line 6628
    :goto_0
    return-object v0

    .line 6627
    :cond_0
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->SMSKeyWordParse()V

    .line 6628
    sget-object v0, Lcom/android/settings/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 6243
    const/4 v0, 0x0

    .line 6245
    .local v0, "simName":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 6246
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6251
    :goto_0
    return-object v0

    .line 6248
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "subFeature"    # Ljava/lang/String;

    .prologue
    .line 3800
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3801
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSubId(Ljava/lang/String;)I
    .locals 6
    .param p1, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 6316
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 6317
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 6318
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6319
    .local v2, "subId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6320
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6325
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "subId":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 6324
    :cond_1
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTab = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " non mobile tab called this function"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6325
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private getTimeData(II)V
    .locals 6
    .param p1, "mainOemid"    # I
    .param p2, "subOemid"    # I

    .prologue
    .line 6081
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6082
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6084
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6085
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6086
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6087
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6089
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 6090
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6095
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getOemData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6096
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 6097
    :goto_0
    return-void

    .line 6091
    :catch_0
    move-exception v2

    .line 6092
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasReadyEnt1Radio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5599
    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/android/settings/DataUsageSummary;->hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private static hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkType"    # I

    .prologue
    .line 5609
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .line 5610
    .local v1, "slotId":I
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 5611
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 5613
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasReadyEnterpriseNetwork(): sim state for slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSplitBillingEnabled() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5615
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5550
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 5551
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 5553
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 5556
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 5573
    :goto_0
    return v9

    .line 5561
    :cond_0
    const/4 v2, 0x1

    .line 5562
    .local v2, "isReady":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 5563
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v10, 0x5

    if-ne v7, v10, :cond_1

    move v7, v8

    :goto_2
    and-int/2addr v2, v7

    .line 5565
    goto :goto_1

    :cond_1
    move v7, v9

    .line 5563
    goto :goto_2

    .line 5566
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    move v3, v8

    .local v3, "retVal":Z
    :goto_3
    move v9, v3

    .line 5573
    goto :goto_0

    .end local v3    # "retVal":Z
    :cond_3
    move v3, v9

    .line 5566
    goto :goto_3
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5584
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 5585
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 5586
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 5587
    .local v3, "slotId":I
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    move v1, v5

    .line 5589
    .local v1, "isReady":Z
    :goto_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    move v2, v5

    .line 5593
    .local v2, "retVal":Z
    :goto_1
    return v2

    .end local v1    # "isReady":Z
    .end local v2    # "retVal":Z
    :cond_0
    move v1, v6

    .line 5587
    goto :goto_0

    .restart local v1    # "isReady":Z
    :cond_1
    move v2, v6

    .line 5589
    goto :goto_1
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5649
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 5650
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateDropDownPreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "spinner"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 5714
    const v5, 0x7f040171

    invoke-virtual {p0, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 5715
    .local v3, "view":Landroid/view/View;
    const v5, 0x1020018

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 5717
    .local v4, "widgetFrame":Landroid/widget/LinearLayout;
    move-object v1, p2

    .local v1, "mSpinner":Landroid/view/View;
    move-object v2, v3

    .line 5718
    check-cast v2, Landroid/view/ViewGroup;

    .line 5719
    .local v2, "vg":Landroid/view/ViewGroup;
    const v5, 0x7f020284

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5720
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5721
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5722
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5723
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5724
    new-instance v5, Lcom/android/settings/DataUsageSummary$40;

    invoke-direct {v5, v1}, Lcom/android/settings/DataUsageSummary$40;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5730
    return-object v3
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 5696
    const v2, 0x7f040171

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5697
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5699
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5700
    const v2, 0x7f020284

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5701
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 5686
    const v2, 0x7f040171

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5687
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5689
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5690
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5691
    const v2, 0x7f020284

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5692
    return-object v0
.end method

.method private initDonutLayout(Landroid/view/View;Landroid/content/Context;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 6333
    const-string v8, "DataUsage/LPF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initDonutLayout() orientation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6335
    const v8, 0x7f0d01b2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    .line 6336
    const v8, 0x7f0d01b9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRelativeLayoutRaminfo_land:Landroid/view/View;

    .line 6337
    const v8, 0x7f0d01b7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDividerView_land:Landroid/view/View;

    .line 6338
    const v8, 0x7f0d01b8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    .line 6339
    const v8, 0x7f0d01b6

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRamFreePercent_land:Landroid/widget/TextView;

    .line 6340
    const v8, 0x7f0d01bd

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRamFree_land:Landroid/widget/TextView;

    .line 6341
    const v8, 0x7f0d01be

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mVertifyTraffic_land:Landroid/widget/Button;

    .line 6342
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mVertifyTraffic_land:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mEnterChartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6343
    const v8, 0x7f0d01bb

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mOccupiedRam_land:Landroid/widget/TextView;

    .line 6344
    const v8, 0x7f0d01bf

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mtvTotalRam_land:Landroid/widget/TextView;

    .line 6345
    const v8, 0x7f0d01ba

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    .line 6346
    const v8, 0x7f0d01b3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    .line 6348
    const v8, 0x7f0d01a0

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    .line 6349
    const v8, 0x7f0d01ab

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRelativeLayoutRaminfo:Landroid/view/View;

    .line 6350
    const v8, 0x7f0d01a5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDividerView:Landroid/view/View;

    .line 6351
    const v8, 0x7f0d01a6

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mUseDataTotalPercent:Landroid/widget/TextView;

    .line 6352
    const v8, 0x7f0d01a4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRamFreePercent:Landroid/widget/TextView;

    .line 6354
    const v8, 0x7f0d01af

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRamFree:Landroid/widget/TextView;

    .line 6355
    const v8, 0x7f0d01b0

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mVertifyTraffic:Landroid/widget/Button;

    .line 6356
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mVertifyTraffic:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mEnterChartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6357
    const v8, 0x7f0d01ad

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mOccupiedRam:Landroid/widget/TextView;

    .line 6359
    const v8, 0x7f0d01b1

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mtvTotalRam:Landroid/widget/TextView;

    .line 6360
    const v8, 0x7f0d01ac

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    .line 6361
    const v8, 0x7f0d01a8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mCleaningProgress:Landroid/widget/ProgressBar;

    .line 6362
    const v8, 0x7f0d01aa

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTickImage:Landroid/widget/ImageView;

    .line 6363
    const v8, 0x7f0d01a9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTickImageBg:Landroid/widget/ImageView;

    .line 6364
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    .line 6367
    iget-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v8, :cond_0

    .line 6368
    const v8, 0x7f0d01ae

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    .line 6369
    const v8, 0x7f0d01a2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/settings/datasaving/SavedDataCircleView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    .line 6370
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v10, 0x7f0c0417

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v11, 0x7f0c0417

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/datasaving/SavedDataCircleView;->setCircleCenter(FF)V

    .line 6371
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v10, 0x7f0c0444

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datasaving/SavedDataCircleView;->setStrokeWidth(F)V

    .line 6372
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v10, 0x7f0a0153

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datasaving/SavedDataCircleView;->setPaintColor(I)V

    .line 6373
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v10, 0x7f0c0445

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datasaving/SavedDataCircleView;->setRadius(F)V

    .line 6375
    const v8, 0x7f0d01bc

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedTVLand:Landroid/widget/TextView;

    .line 6376
    const v8, 0x7f0d01b4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/settings/datasaving/SavedDataCircleView;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

    .line 6377
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v10, 0x7f0c0417

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v11, 0x7f0c0417

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/datasaving/SavedDataCircleView;->setCircleCenter(FF)V

    .line 6378
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v10, 0x7f0c0444

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datasaving/SavedDataCircleView;->setStrokeWidth(F)V

    .line 6379
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v10, 0x7f0a0153

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datasaving/SavedDataCircleView;->setPaintColor(I)V

    .line 6380
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v10, 0x7f0c0445

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datasaving/SavedDataCircleView;->setRadius(F)V

    .line 6383
    :cond_0
    const v8, 0x7f0d01a1

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    .line 6384
    const v8, 0x7f0d01c3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 6385
    const v8, 0x7f0d01c4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    .line 6386
    const v8, 0x7f0d01c5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    .line 6388
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->SMSKeyWordParse()V

    .line 6389
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v8

    if-lez v8, :cond_4

    .line 6390
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/ChartDataUsageView;->setVisibility(I)V

    .line 6391
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRelativeLayoutRaminfo:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 6392
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRelativeLayoutRaminfo_land:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 6393
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRamFreePercent:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6394
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRamFreePercent_land:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6395
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRamFree:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6396
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mRamFree_land:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6397
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6398
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6399
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 6400
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 6404
    :goto_0
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v9, 0x7f0c0417

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 6405
    .local v6, "radius":I
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v6}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    .line 6406
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v6}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    .line 6407
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c041d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    .line 6410
    .local v1, "donutLayoutHeight":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 6412
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 6413
    .local v0, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 6414
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 6415
    iget v8, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0416

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sub-int v2, v8, v9

    .line 6422
    .end local v0    # "display":Landroid/view/Display;
    .end local v7    # "size":Landroid/graphics/Point;
    .local v2, "donutLayoutWidth":I
    :goto_1
    const-string v8, "DataUsage/LPF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "donutLayoutWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "donutLayoutHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6423
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v8, v1, v1}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLayoutDimension(II)V

    .line 6424
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v8, v1, v1}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLayoutDimension(II)V

    .line 6425
    const/4 v3, 0x0

    .line 6426
    .local v3, "mIsDirectionRTL":Z
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    const/4 v3, 0x1

    .line 6428
    :goto_2
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v8, v3}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDirectionRTL(Z)V

    .line 6429
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v8, v3}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDirectionRTL(Z)V

    .line 6430
    new-instance v8, Lcom/android/settings/trafficmanager/TrafficDataSummary;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    invoke-direct {v8, v9, p2}, Lcom/android/settings/trafficmanager/TrafficDataSummary;-><init>(Lcom/android/settings/net/ChartData;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    .line 6431
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    .line 6432
    .local v4, "mTemplate":Landroid/net/NetworkTemplate;
    invoke-direct {p0, v4}, Lcom/android/settings/DataUsageSummary;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    .line 6433
    .local v5, "policy":Landroid/net/NetworkPolicy;
    if-eqz v5, :cond_1

    .line 6434
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    iget v9, v5, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-virtual {v8, v9}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setDefaultCycleDay(I)V

    .line 6435
    const-string v8, "DataUsage/LPF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read cycle day from policy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6442
    :cond_1
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v8, :cond_8

    .line 6443
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v8}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 6447
    :goto_3
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    if-eqz v8, :cond_2

    .line 6448
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v8}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/DataUsageSummary;->setColorOnStatus(F)V

    .line 6450
    const/high16 v8, 0x42c80000    # 100.0f

    invoke-direct {p0, v8}, Lcom/android/settings/DataUsageSummary;->setDonut(F)V

    .line 6452
    :cond_2
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6453
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v8

    if-nez v8, :cond_3

    .line 6454
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 6455
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 6457
    :cond_3
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    const v9, 0x7f0e16c7

    invoke-virtual {p0, v9}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6458
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mVertifyTrafficListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6459
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    const v9, 0x7f0e16c8

    invoke-virtual {p0, v9}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6460
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mVertifyTrafficListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6461
    sget v8, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 6462
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6463
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6466
    .end local v1    # "donutLayoutHeight":I
    .end local v2    # "donutLayoutWidth":I
    .end local v3    # "mIsDirectionRTL":Z
    .end local v4    # "mTemplate":Landroid/net/NetworkTemplate;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "radius":I
    :cond_4
    return-void

    .line 6402
    :cond_5
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 6418
    .restart local v1    # "donutLayoutHeight":I
    .restart local v6    # "radius":I
    :cond_6
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0419

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0416

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .restart local v2    # "donutLayoutWidth":I
    goto/16 :goto_1

    .line 6426
    .restart local v3    # "mIsDirectionRTL":Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 6445
    .restart local v4    # "mTemplate":Landroid/net/NetworkTemplate;
    .restart local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_8
    const-string v8, "DataUsage/LPF"

    const-string v9, "mChartData is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private initMobileTabTag(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6299
    .local p1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    .line 6300
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 6302
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6303
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 6304
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6305
    .local v2, "mobileTag":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6308
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mobileTag":Ljava/lang/String;
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 5824
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5825
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5829
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 5830
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 5831
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5833
    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 5834
    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5835
    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6138
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 6139
    .local v0, "req":Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 6141
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6142
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mlifetimeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 6145
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 6146
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 6151
    :goto_0
    return-void

    .line 6148
    :cond_0
    const-string v1, "DataUsage"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 2761
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2764
    :goto_0
    return v1

    .line 2762
    :catch_0
    move-exception v0

    .line 2763
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataAvailable(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 6329
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2699
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4093
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4094
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4095
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 4096
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 4098
    .end local v1    # "tele":Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isMobileTab(Ljava/lang/String;)Z
    .locals 1
    .param p0, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 6312
    if-eqz p0, :cond_0

    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 2755
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingArea()Z
    .locals 2

    .prologue
    .line 6035
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6036
    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 6038
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportOnDeviceHelp()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1836
    const/4 v1, 0x0

    .line 1838
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1842
    :goto_0
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 1839
    :catch_0
    move-exception v0

    .line 1840
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private multiSimGetCurrentSub()I
    .locals 5

    .prologue
    .line 6232
    const/4 v0, -0x1

    .line 6233
    .local v0, "slotId":I
    const/4 v1, -0x1

    .line 6234
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "mobile"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 6235
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v3, "mobile"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6236
    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v0

    .line 6238
    :cond_0
    const-string v2, "DataUsage/LPF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multiSimGetCurrentSub, subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6240
    return v0
.end method

.method private static removePreferenceSummary(Landroid/view/View;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;

    .prologue
    .line 5876
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5877
    .local v0, "summary":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5878
    return-void
.end method

.method private resetTimeData(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/16 v6, 0xb

    .line 6100
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6101
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6103
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6104
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6105
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6106
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6107
    if-nez p1, :cond_0

    .line 6108
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6113
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 6114
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6118
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " resetTimeData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6119
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 6120
    :goto_1
    return-void

    .line 6110
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6115
    :catch_0
    move-exception v2

    .line 6116
    .local v2, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 2816
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 2817
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 2819
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2820
    return-void

    .line 2817
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setColorOnStatus(F)V
    .locals 3
    .param p1, "percentage"    # F

    .prologue
    const/4 v2, 0x0

    .line 6496
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6527
    :goto_0
    return-void

    .line 6501
    :cond_0
    cmpg-float v1, p1, v2

    if-gtz v1, :cond_1

    .line 6502
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0a013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 6517
    .local v0, "colorSet":I
    :goto_1
    iput v0, p0, Lcom/android/settings/DataUsageSummary;->mGraphOccupiedColor:I

    .line 6518
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0a013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/DataUsageSummary;->mGraphFreeColor:I

    .line 6519
    iput v0, p0, Lcom/android/settings/DataUsageSummary;->mGraphLineColor:I

    .line 6520
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6522
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6524
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6525
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6526
    iput v0, p0, Lcom/android/settings/DataUsageSummary;->mGraphLineColor:I

    goto :goto_0

    .line 6503
    .end local v0    # "colorSet":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v1

    sub-float v1, p1, v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 6504
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0a013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "colorSet":I
    goto :goto_1

    .line 6506
    .end local v0    # "colorSet":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0a0138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "colorSet":I
    goto :goto_1
.end method

.method private setDonut(F)V
    .locals 10
    .param p1, "percentage"    # F

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x0

    .line 6471
    const-string v3, "DataUsage/LPF"

    const-string v4, "setDonut()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6472
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6494
    :goto_0
    return-void

    .line 6475
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6476
    .local v1, "pieInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;>;"
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 6477
    .local v2, "position":[I
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 6478
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 6479
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f0c0428

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 6482
    .local v0, "lineFreeY":I
    new-instance v3, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    const/high16 v4, 0x42c80000    # 100.0f

    sub-float/2addr v4, p1

    iget v5, p0, Lcom/android/settings/DataUsageSummary;->mGraphOccupiedColor:I

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->colorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6484
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 6485
    new-instance v3, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    iget v4, p0, Lcom/android/settings/DataUsageSummary;->mGraphFreeColor:I

    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6489
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iget v4, p0, Lcom/android/settings/DataUsageSummary;->mGraphLineColor:I

    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setPie(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 6490
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v3, v6, v8, v9}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->detail(ZJ)V

    .line 6491
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iget v4, p0, Lcom/android/settings/DataUsageSummary;->mGraphLineColor:I

    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setPie(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 6492
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v3, v6, v8, v9}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->detail(ZJ)V

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2705
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 2706
    if-eqz p1, :cond_0

    .line 2707
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "MDES"

    const/16 v5, 0x3e8

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2713
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2718
    .local v0, "value":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 2719
    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 2720
    return-void

    .line 2709
    .end local v0    # "value":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "MDES"

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2713
    goto :goto_1
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 2682
    const-string v0, "DataUsage/LPF"

    const-string v1, "setPolicyLimitBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 2685
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 2686
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 2678
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 2679
    return-void
.end method

.method private static setPreferenceDisable(Landroid/view/View;Z)V
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "enable"    # Z

    .prologue
    .line 5847
    const v2, 0x1020016

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5848
    .local v0, "title":Landroid/widget/TextView;
    const v2, 0x1020018

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5850
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5851
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 5852
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 5870
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5871
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5872
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5873
    return-void
.end method

.method private static setPreferenceSummaryColor(Landroid/view/View;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 5
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "tf"    # Ljava/lang/Boolean;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 5880
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 5881
    const v2, 0x1020010

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5882
    .local v1, "summary":Landroid/widget/TextView;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 5883
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010434

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5884
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_0

    .line 5885
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5887
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 5842
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5843
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 5844
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "preferenceTitle"    # Ljava/lang/String;

    .prologue
    .line 5861
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5862
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5863
    return-void
.end method

.method private static setPreferenceTitle(ZLandroid/view/View;I)V
    .locals 2
    .param p0, "tabChanged"    # Z
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 5855
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5856
    .local v0, "title":Landroid/widget/TextView;
    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/settings/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    if-eqz v1, :cond_1

    .line 5857
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 5858
    :cond_1
    return-void
.end method

.method private setSummaryfortimedata([B)V
    .locals 14
    .param p1, "data"    # [B

    .prologue
    const-wide/16 v12, 0x0

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    .line 6198
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v0

    .line 6199
    .local v0, "rx":J
    invoke-virtual {p0, p1, v9, v10}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v6

    .line 6200
    .local v6, "tx":J
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v2

    .line 6201
    .local v2, "total_rx":J
    const/16 v8, 0x18

    invoke-virtual {p0, p1, v11, v8}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v4

    .line 6202
    .local v4, "total_tx":J
    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSummaryfortimedata :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6203
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 6204
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 6205
    cmp-long v8, v2, v12

    if-lez v8, :cond_0

    cmp-long v8, v4, v12

    if-lez v8, :cond_0

    .line 6206
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    add-long v10, v2, v4

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 6208
    :cond_0
    return-void
.end method

.method private setTrafficText()V
    .locals 7

    .prologue
    const v3, 0x7f0e1076

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 6529
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6570
    :goto_0
    return-void

    .line 6533
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mtvTotalRam:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6534
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mtvTotalRam:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6535
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mtvTotalRam_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6536
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mtvTotalRam_land:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6541
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mRamFreePercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6542
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mRamFreePercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6543
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6544
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6545
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6546
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6547
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6548
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6549
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDividerView_land:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6558
    :goto_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsExceed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6559
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e16a1

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6560
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e16a1

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6568
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mRamFree:Landroid/widget/TextView;

    const v1, 0x7f0e169f

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getTodayused()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6569
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mRamFree_land:Landroid/widget/TextView;

    const v1, 0x7f0e169f

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getTodayused()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 6551
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6552
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6553
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6554
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6555
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6556
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDividerView_land:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 6561
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsExceed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6562
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e16a0

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6563
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e16a0

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 6564
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6565
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    const v1, 0x7f0e16ca

    invoke-virtual {p0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6566
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    const v1, 0x7f0e16ca

    invoke-virtual {p0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private showRequestedAppIfNeeded(Landroid/view/View;)V
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 1414
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1418
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 1420
    .local v4, "uid":I
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-direct {v0, v4}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1421
    .local v0, "app":Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-virtual {v0, v4}, Lcom/android/settings/DataUsageSummary$AppItem;->addUid(I)V

    .line 1423
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    iget v6, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v1

    .line 1426
    .local v1, "detail":Lcom/android/settings/net/UidDetail;
    const v5, 0x7f0d01c2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1427
    .local v3, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v1, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v3}, Lcom/android/settings/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 1428
    iget-object v5, v1, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {p0, v0, v5, v6}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1429
    .end local v0    # "app":Lcom/android/settings/DataUsageSummary$AppItem;
    .end local v1    # "detail":Lcom/android/settings/net/UidDetail;
    .end local v3    # "pinnedHeader":Landroid/widget/FrameLayout;
    .end local v4    # "uid":I
    :catch_0
    move-exception v2

    .line 1430
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e0eec

    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1433
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private updateAppDetail()V
    .locals 38

    .prologue
    .line 2399
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 2400
    .local v9, "context":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    .line 2401
    .local v28, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    .line 2403
    .local v18, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v35

    if-eqz v35, :cond_2

    .line 2405
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v35

    if-eqz v35, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v35

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    if-nez v35, :cond_0

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2413
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 2418
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 2419
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary;->updateAppSavedTVContainer(Z)V

    .line 2511
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    move/from16 v33, v0

    .line 2515
    .local v33, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v14

    .line 2516
    .local v14, "detail":Lcom/android/settings/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    iget-object v0, v14, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2520
    const/16 v32, 0x0

    .line 2521
    .local v32, "title":Landroid/view/View;
    iget-object v0, v14, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    if-eqz v35, :cond_14

    .line 2522
    iget-object v0, v14, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v25, v0

    .line 2523
    .local v25, "n":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_15

    .line 2524
    iget-object v0, v14, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    aget-object v20, v35, v16

    .line 2525
    .local v20, "label":Ljava/lang/CharSequence;
    iget-object v0, v14, Lcom/android/settings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    aget-object v8, v35, v16

    .line 2526
    .local v8, "contentDescription":Ljava/lang/CharSequence;
    const v35, 0x7f040093

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    .line 2527
    const v35, 0x7f0d0182

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2528
    .local v6, "appTitle":Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2529
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2523
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2423
    .end local v6    # "appTitle":Landroid/widget/TextView;
    .end local v8    # "contentDescription":Ljava/lang/CharSequence;
    .end local v14    # "detail":Lcom/android/settings/net/UidDetail;
    .end local v16    # "i":I
    .end local v20    # "label":Ljava/lang/CharSequence;
    .end local v25    # "n":I
    .end local v32    # "title":Landroid/view/View;
    .end local v33    # "uid":I
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v35

    if-eqz v35, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    .line 2425
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    move/from16 v35, v0

    if-nez v35, :cond_3

    const-string v35, "wifi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 2426
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/widget/ChartDataUsageView;->setVisibility(I)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    if-nez v35, :cond_4

    .line 2430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2432
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2498
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 2500
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v35

    if-eqz v35, :cond_6

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 2506
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 2673
    :cond_7
    :goto_2
    return-void

    .line 2434
    :cond_8
    const-string v35, "DataUsage/LPF"

    const-string v36, "Normal mode"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    move-object/from16 v35, v0

    if-eqz v35, :cond_12

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setSimSlot(I)V

    .line 2437
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v35

    if-eqz v35, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 2438
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v36

    const/16 v37, 0x0

    aget v36, v36, v37

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setSubId(I)V

    .line 2440
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setChartData(Lcom/android/settings/net/ChartData;)V

    .line 2441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 2443
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    move/from16 v35, v0

    if-eqz v35, :cond_b

    .line 2444
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateSavedTvState()V

    .line 2445
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateSavedDataCircleView()V

    .line 2446
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    move/from16 v35, v0

    if-eqz v35, :cond_b

    .line 2447
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary;->updateChartSavedTV(Z)V

    .line 2450
    :cond_b
    new-instance v35, Landroid/text/format/Time;

    invoke-direct/range {v35 .. v35}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v35

    iget-object v12, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2452
    .local v12, "cycleTimezone":Ljava/lang/String;
    :try_start_0
    sget-boolean v35, Lcom/android/settings/DataUsageSummary;->isFromTrafficStings:Z

    if-eqz v35, :cond_d

    .line 2453
    const-string v35, "DataUsage/LPF"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "isFromTrafficStings:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/settings/DataUsageSummary;->isFromTrafficStings:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    move-object/from16 v35, v0

    if-eqz v35, :cond_c

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getStartDay()I

    move-result v37

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 2456
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 2458
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsMonitorOn()Z

    move-result v35

    if-eqz v35, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsBlockData()Z

    move-result v35

    if-eqz v35, :cond_10

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getlimiValue()J

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    .line 2463
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsMonitorOn()Z

    move-result v35

    if-eqz v35, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v35

    const/high16 v36, -0x40800000    # -1.0f

    cmpl-float v35, v35, v36

    if-lez v35, :cond_11

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getWarningByte()J

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V

    .line 2468
    :goto_4
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/DataUsageSummary;->isFromTrafficStings:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2475
    .end local v12    # "cycleTimezone":Ljava/lang/String;
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    if-eqz v35, :cond_e

    .line 2477
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary;->setColorOnStatus(F)V

    .line 2478
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->setTrafficText()V

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary;->setDonut(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2484
    :cond_e
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2489
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/widget/ChartDataUsageView;->setVisibility(I)V

    .line 2490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    if-eqz v35, :cond_f

    .line 2491
    const-string v35, "DataUsage/LPF"

    const-string v36, "remove the mCycleView"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2494
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 2461
    .restart local v12    # "cycleTimezone":Ljava/lang/String;
    :cond_10
    const-wide/16 v36, -0x1

    :try_start_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    goto/16 :goto_3

    .line 2470
    :catch_0
    move-exception v35

    goto/16 :goto_5

    .line 2466
    :cond_11
    const-wide/16 v36, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 2473
    .end local v12    # "cycleTimezone":Ljava/lang/String;
    :cond_12
    const-string v35, "DataUsage/LPF"

    const-string v36, "mChartData11 is null"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2480
    :catch_1
    move-exception v15

    .line 2481
    .local v15, "e":Ljava/lang/Exception;
    const-string v35, "DataUsage/LPF"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Exception :"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2487
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 2533
    .restart local v14    # "detail":Lcom/android/settings/net/UidDetail;
    .restart local v32    # "title":Landroid/view/View;
    .restart local v33    # "uid":I
    :cond_14
    const v35, 0x7f040093

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    .line 2534
    const v35, 0x7f0d0182

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2535
    .restart local v6    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v14, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2536
    iget-object v0, v14, Lcom/android/settings/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2541
    .end local v6    # "appTitle":Landroid/widget/TextView;
    :cond_15
    if-eqz v32, :cond_19

    .line 2542
    const v35, 0x7f0d0183

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    .line 2548
    :goto_8
    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v27

    .line 2549
    .local v27, "packageNames":[Ljava/lang/String;
    if-eqz v27, :cond_1b

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_1b

    .line 2550
    new-instance v35, Landroid/content/Intent;

    const-string v36, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 2551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v35, v0

    const-string v36, "android.intent.category.DEFAULT"

    invoke-virtual/range {v35 .. v36}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2554
    const/16 v24, 0x0

    .line 2555
    .local v24, "matchFound":Z
    move-object/from16 v7, v27

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_9
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    aget-object v26, v7, v17

    .line 2556
    .local v26, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v35

    if-eqz v35, :cond_1a

    .line 2558
    const/16 v24, 0x1

    .line 2563
    .end local v26    # "packageName":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v35, v0

    new-instance v36, Lcom/android/settings/DataUsageSummary$15;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$15;-><init>(Lcom/android/settings/DataUsageSummary;I)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/Button;->setVisibility(I)V

    .line 2593
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v21    # "len$":I
    .end local v24    # "matchFound":Z
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    .line 2595
    const/16 v31, 0x0

    .line 2596
    .local v31, "support_uds":Z
    const/16 v34, 0x1

    .line 2597
    .local v34, "unhide_for_uds":Z
    const/16 v19, 0x0

    .line 2599
    .local v19, "isUDSEnable":Z
    const-string v35, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v36, "UDS"

    invoke-static/range {v35 .. v36}, Lcom/android/settings/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_17

    .line 2600
    const/16 v31, 0x1

    .line 2601
    const/16 v34, 0x0

    .line 2602
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "udsState"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    const/16 v19, 0x1

    .line 2603
    :goto_b
    if-nez v19, :cond_17

    .line 2604
    const/16 v34, 0x1

    .line 2607
    :cond_17
    if-eqz v31, :cond_1f

    if-eqz v19, :cond_1f

    .line 2608
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "UDS_Package_names"

    invoke-static/range {v35 .. v36}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2609
    .local v5, "active_app_list":Ljava/lang/String;
    const/16 v23, 0x0

    .line 2610
    .local v23, "mActiveAppsNum":I
    const/4 v10, 0x0

    .line 2611
    .local v10, "convertPackageString":Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2615
    .local v22, "mActiveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v35, ","

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2618
    .local v4, "activeApps":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v23, v0

    .line 2620
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_c
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_1d

    .line 2621
    aget-object v10, v4, v16

    .line 2622
    if-eqz v10, :cond_18

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_18

    const-string v35, "empty"

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_18

    .line 2623
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2624
    const-string v35, "DataUsage"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "mActiveAppList :  "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_18
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 2544
    .end local v4    # "activeApps":[Ljava/lang/String;
    .end local v5    # "active_app_list":Ljava/lang/String;
    .end local v10    # "convertPackageString":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v19    # "isUDSEnable":Z
    .end local v22    # "mActiveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "mActiveAppsNum":I
    .end local v27    # "packageNames":[Ljava/lang/String;
    .end local v31    # "support_uds":Z
    .end local v34    # "unhide_for_uds":Z
    :cond_19
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_8

    .line 2555
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v21    # "len$":I
    .restart local v24    # "matchFound":Z
    .restart local v26    # "packageName":Ljava/lang/String;
    .restart local v27    # "packageNames":[Ljava/lang/String;
    :cond_1a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_9

    .line 2588
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v21    # "len$":I
    .end local v24    # "matchFound":Z
    .end local v26    # "packageName":Ljava/lang/String;
    :cond_1b
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 2589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_a

    .line 2602
    .restart local v19    # "isUDSEnable":Z
    .restart local v31    # "support_uds":Z
    .restart local v34    # "unhide_for_uds":Z
    :cond_1c
    const/16 v19, 0x0

    goto/16 :goto_b

    .line 2628
    .restart local v4    # "activeApps":[Ljava/lang/String;
    .restart local v5    # "active_app_list":Ljava/lang/String;
    .restart local v10    # "convertPackageString":Ljava/lang/String;
    .restart local v16    # "i":I
    .restart local v22    # "mActiveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "mActiveAppsNum":I
    :cond_1d
    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 2629
    .local v11, "currentPackageNames":[Ljava/lang/String;
    if-eqz v11, :cond_1f

    array-length v0, v11

    move/from16 v35, v0

    if-lez v35, :cond_1f

    .line 2630
    const/16 v16, 0x0

    :goto_d
    array-length v0, v11

    move/from16 v35, v0

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_1f

    .line 2631
    aget-object v35, v11, v16

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1e

    .line 2632
    const/16 v34, 0x1

    .line 2630
    :cond_1e
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 2637
    .end local v4    # "activeApps":[Ljava/lang/String;
    .end local v5    # "active_app_list":Ljava/lang/String;
    .end local v10    # "convertPackageString":Ljava/lang/String;
    .end local v11    # "currentPackageNames":[Ljava/lang/String;
    .end local v16    # "i":I
    .end local v22    # "mActiveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "mActiveAppsNum":I
    :cond_1f
    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v35

    if-nez v35, :cond_23

    invoke-static/range {v33 .. v33}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v35

    if-eqz v35, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v35

    if-nez v35, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v35

    if-eqz v35, :cond_23

    invoke-static {v9}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_23

    if-eqz v34, :cond_23

    .line 2639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f0e0c8c

    invoke-static/range {v35 .. v36}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2642
    sget-boolean v35, Lcom/android/settings/DataUsageSummary;->bSupportRoamingReduction:Z

    if-eqz v35, :cond_22

    .line 2643
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v13

    .line 2644
    .local v13, "dataPolicy":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getRoamingReduction(I)I

    move-result v29

    .line 2645
    .local v29, "roamPolicy":I
    const/16 v30, 0x0

    .line 2646
    .local v30, "selection":I
    const-string v35, "DataUsage"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "updateAppDetail()  bg_policy : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    if-eqz v13, :cond_20

    .line 2648
    const/16 v30, 0x1

    .line 2654
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2670
    .end local v13    # "dataPolicy":Z
    .end local v29    # "roamPolicy":I
    .end local v30    # "selection":I
    :goto_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v35

    if-eqz v35, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v35

    if-eqz v35, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v35

    if-nez v35, :cond_7

    .line 2671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2650
    .restart local v13    # "dataPolicy":Z
    .restart local v29    # "roamPolicy":I
    .restart local v30    # "selection":I
    :cond_20
    if-nez v29, :cond_21

    .line 2651
    const/16 v30, 0x2

    goto :goto_e

    .line 2652
    :cond_21
    const/16 v30, 0x0

    goto :goto_e

    .line 2656
    .end local v13    # "dataPolicy":Z
    .end local v29    # "roamPolicy":I
    .end local v30    # "selection":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v35, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_f

    .line 2668
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f
.end method

.method private updateAppSavedTVContainer(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 6842
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6843
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6846
    :cond_0
    return-void

    .line 6843
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateBody()V
    .locals 33

    .prologue
    .line 2149
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 2150
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2388
    :goto_0
    return-void

    .line 2152
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 2153
    .local v11, "context":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 2154
    .local v19, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v12

    .line 2155
    .local v12, "currentTab":Ljava/lang/String;
    const-string v4, "DataUsage/LPF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "currentTab:"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v11}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/16 v16, 0x1

    .line 2159
    .local v16, "isOwner":Z
    :goto_1
    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 2163
    :cond_2
    if-nez v12, :cond_4

    .line 2164
    const-string v4, "DataUsage"

    const-string v5, "no tab selected; hiding body"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 2156
    .end local v16    # "isOwner":Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .line 2168
    .restart local v16    # "isOwner":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v28, 0x1

    .line 2172
    .local v28, "tabChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 2176
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2177
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2178
    invoke-static {v11}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    if-nez v4, :cond_d

    const/16 v17, 0x1

    .line 2179
    .local v17, "isVisible":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    if-eqz v17, :cond_e

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2180
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v22

    .line 2181
    .local v22, "simSlotId":I
    const/16 v27, 0x0

    .line 2182
    .local v27, "switchOn":I
    const-string v10, "switch_traffic_settings"

    .line 2184
    .local v10, "KEY_SWITCH_ON":Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 2185
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2191
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v4, :cond_7

    .line 2192
    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    if-eqz v4, :cond_6

    .line 2193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/settings/datasaving/DataSavingHelper;->getIMSIBySoltId(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/datasaving/DataSavingHelper;->setCurrentIMSI(Ljava/lang/String;)V

    .line 2194
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateSavingState()V

    .line 2196
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    if-eqz v4, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/DataUsageSummary;->updateChartSavedTV(Z)V

    .line 2203
    :cond_7
    invoke-static {v12}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2206
    const-string v4, "DataUsage/LPF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "(MultiSimManager.getEnabledSimCount(getActivity()):"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    const-string v4, "DataUsage/LPF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mIsChartFragment:"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    if-eqz v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_10

    .line 2209
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2210
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2259
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    if-nez v4, :cond_9

    .line 2260
    :cond_8
    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/DataUsageSummary;->isMobileDataAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2265
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v11, v4}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 2266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 2333
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v4}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 2334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 2335
    .local v18, "policy":Landroid/net/NetworkPolicy;
    if-eqz v18, :cond_a

    .line 2336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2337
    .local v14, "currentTime":J
    move-object/from16 v0, v18

    invoke-static {v14, v15, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 2338
    .local v6, "start":J
    move-wide v8, v14

    .line 2339
    .local v8, "end":J
    const-wide/16 v30, 0x0

    .line 2342
    .local v30, "totalBytes":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-interface/range {v4 .. v9}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v30

    .line 2347
    :goto_9
    move-object/from16 v0, v18

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, v18

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_23

    .line 2348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0c6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2364
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v14    # "currentTime":J
    .end local v30    # "totalBytes":J
    :cond_a
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v4, v5, v0, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 2368
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2370
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 2372
    const v4, 0x7f0a010c

    invoke-virtual {v11, v4}, Landroid/content/Context;->getColor(I)I

    move-result v21

    .line 2373
    .local v21, "seriesColor":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "mobile"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v5, "ethernet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v5, "mobile"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 2376
    .local v24, "slotId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v23

    .line 2379
    .local v23, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v23, :cond_b

    .line 2380
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v21

    .line 2384
    .end local v23    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v24    # "slotId":I
    :cond_b
    const/16 v4, 0x7f

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->green(I)I

    move-result v29

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->blue(I)I

    move-result v32

    move/from16 v0, v29

    move/from16 v1, v32

    invoke-static {v4, v5, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    .line 2386
    .local v20, "secondaryColor":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/high16 v5, -0x1000000

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 2387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDetailedSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/high16 v5, -0x1000000

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    goto/16 :goto_0

    .line 2171
    .end local v10    # "KEY_SWITCH_ON":Ljava/lang/String;
    .end local v17    # "isVisible":Z
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    .end local v20    # "secondaryColor":I
    .end local v21    # "seriesColor":I
    .end local v22    # "simSlotId":I
    .end local v27    # "switchOn":I
    .end local v28    # "tabChanged":Z
    :cond_c
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 2178
    .restart local v28    # "tabChanged":Z
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 2179
    .restart local v17    # "isVisible":Z
    :cond_e
    const/16 v4, 0x8

    goto/16 :goto_4

    .line 2196
    .restart local v10    # "KEY_SWITCH_ON":Ljava/lang/String;
    .restart local v22    # "simSlotId":I
    .restart local v27    # "switchOn":I
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 2218
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0c86

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2220
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-nez v4, :cond_12

    .line 2221
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2222
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0cab

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2225
    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2229
    const/16 v25, -0x1

    .line 2230
    .local v25, "subId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 2231
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v25, v4, v5

    .line 2234
    :cond_14
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v27

    .line 2239
    :goto_b
    if-nez v27, :cond_18

    .line 2240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    const v5, 0x7f0e16c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2245
    .end local v25    # "subId":I
    :cond_15
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const v5, 0x7f0e151d    # 1.8886E38f

    move/from16 v0, v28

    invoke-static {v0, v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const v5, 0x7f0e108a

    move/from16 v0, v28

    invoke-static {v0, v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    .line 2248
    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v4, :cond_16

    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v4, :cond_19

    .line 2249
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e1083

    move/from16 v0, v28

    invoke-static {v0, v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    .line 2253
    :goto_d
    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v4, :cond_17

    .line 2254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0c9c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2256
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const v5, 0x7f0e1080

    move/from16 v0, v28

    invoke-static {v0, v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    goto/16 :goto_6

    .line 2235
    .restart local v25    # "subId":I
    :catch_0
    move-exception v13

    .line 2236
    .local v13, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "DataUsage"

    const-string v5, "switchOn SettingNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    const/16 v27, 0x0

    goto :goto_b

    .line 2242
    .end local v13    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->removePreferenceSummary(Landroid/view/View;)V

    goto :goto_c

    .line 2251
    .end local v25    # "subId":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0c7a

    move/from16 v0, v28

    invoke-static {v0, v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    goto :goto_d

    .line 2260
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 2267
    :cond_1b
    const-string v4, "3g"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0c87

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const v5, 0x7f0e108a

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0c7c

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2272
    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v4, :cond_1c

    .line 2273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0c9c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2276
    :cond_1c
    invoke-static {v11}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_8

    .line 2278
    :cond_1d
    const-string v4, "4g"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0c88

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const v5, 0x7f0e108a

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0c7b

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2283
    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v4, :cond_1e

    .line 2284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0c9c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2287
    :cond_1e
    invoke-static {v11}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_8

    .line 2289
    :cond_1f
    const-string v4, "ent1"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2292
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2293
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2302
    invoke-static {v11}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_8

    .line 2304
    :cond_20
    const-string v4, "wifi"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2307
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2308
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2314
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_8

    .line 2316
    :cond_21
    const-string v4, "ethernet"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2319
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2320
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2326
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_8

    .line 2330
    :cond_22
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unknown tab: "

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2351
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v14    # "currentTime":J
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    .restart local v30    # "totalBytes":J
    :cond_23
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-nez v4, :cond_24

    .line 2352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0cab

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 2354
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x1020010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 2356
    .local v26, "summary":Landroid/widget/TextView;
    const/16 v4, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 2344
    .end local v26    # "summary":Landroid/widget/TextView;
    :catch_1
    move-exception v4

    goto/16 :goto_9

    .line 2343
    :catch_2
    move-exception v4

    goto/16 :goto_9
.end method

.method private updateChartSavedTV(Z)V
    .locals 8
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6828
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChartSavedTV:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v1, :cond_0

    .line 6829
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mChartSavedTV:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6830
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_0

    .line 6832
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/settings/datasaving/DataSavingHelper;->getSavedBytesForAllUid(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settings/datasaving/DataSavingHelper;->getUsageText(J)Ljava/lang/String;

    move-result-object v0

    .line 6835
    .local v0, "savedString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChartSavedTV:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    const v4, 0x7f0e16f2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6839
    .end local v0    # "savedString":Ljava/lang/String;
    :cond_0
    return-void

    .line 6829
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 29
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 2970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 2971
    .local v25, "previousItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->clear()V

    .line 2973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 2974
    .local v11, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 2976
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide v22, 0x7fffffffffffffffL

    .line 2977
    .local v22, "historyStart":J
    const-wide/high16 v20, -0x8000000000000000L

    .line 2978
    .local v20, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v4, :cond_0

    .line 2979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v22

    .line 2980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v20

    .line 2983
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 2986
    .local v26, "now":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v24

    .line 2989
    .local v24, "mobileSplit":Z
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v22, v4

    if-nez v4, :cond_1

    move-wide/from16 v22, v26

    .line 2990
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1

    add-long v20, v26, v4

    .line 2992
    :cond_2
    const/16 v18, 0x0

    .line 2993
    .local v18, "hasCycles":Z
    if-eqz p1, :cond_8

    .line 2995
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    .line 2999
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3002
    .local v8, "cycleEnd":J
    if-nez v24, :cond_3

    invoke-static {v11}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3003
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    .line 3008
    :cond_3
    :goto_0
    cmp-long v4, v8, v22

    if-lez v4, :cond_7

    .line 3009
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3010
    .local v6, "cycleStart":J
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generating cs="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " to ce="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " waiting for hs="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v4, :cond_6

    .line 3015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v5, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 3016
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_5

    const/16 v19, 0x1

    .line 3021
    .local v19, "includeCycle":Z
    :goto_1
    if-eqz v19, :cond_4

    .line 3022
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 3023
    const/16 v18, 0x1

    .line 3025
    :cond_4
    move-wide v8, v6

    .line 3026
    goto :goto_0

    .line 3016
    .end local v19    # "includeCycle":Z
    :cond_5
    const/16 v19, 0x0

    goto :goto_1

    .line 3018
    :cond_6
    const/16 v19, 0x1

    .restart local v19    # "includeCycle":Z
    goto :goto_1

    .line 3028
    .end local v6    # "cycleStart":J
    .end local v19    # "includeCycle":Z
    :cond_7
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/DataUsageSummary;->wificyclestart:J

    .line 3032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 3035
    .end local v8    # "cycleEnd":J
    :cond_8
    if-nez v18, :cond_10

    .line 3037
    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    if-eqz v4, :cond_a

    .line 3038
    move-wide/from16 v8, v20

    .line 3039
    .restart local v8    # "cycleEnd":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-eqz v4, :cond_9

    .line 3040
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    .line 3041
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/DataUsageSummary;->wificyclestart:J

    cmp-long v4, v8, v4

    if-lez v4, :cond_f

    .line 3042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    invoke-static {v8, v9, v4}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3043
    .restart local v6    # "cycleStart":J
    const-string v4, "Varun"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generating cs="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " to ce="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 3045
    move-wide v8, v6

    .line 3046
    goto :goto_2

    .line 3050
    .end local v6    # "cycleStart":J
    .end local v8    # "cycleEnd":J
    :cond_a
    move-wide/from16 v8, v20

    .line 3052
    .restart local v8    # "cycleEnd":J
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "is wifi : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "wifi"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", end time : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", current time : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "wifi"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-gez v4, :cond_b

    .line 3054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3057
    :cond_b
    :goto_3
    cmp-long v4, v8, v22

    if-lez v4, :cond_f

    .line 3058
    const-wide v4, 0x90321000L

    sub-long v6, v8, v4

    .line 3061
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v4, :cond_e

    .line 3062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v5, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 3063
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_d

    const/16 v19, 0x1

    .line 3068
    .restart local v19    # "includeCycle":Z
    :goto_4
    if-eqz v19, :cond_c

    .line 3069
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 3071
    :cond_c
    move-wide v8, v6

    .line 3072
    goto :goto_3

    .line 3063
    .end local v19    # "includeCycle":Z
    :cond_d
    const/16 v19, 0x0

    goto :goto_4

    .line 3065
    :cond_e
    const/16 v19, 0x1

    .restart local v19    # "includeCycle":Z
    goto :goto_4

    .line 3075
    .end local v6    # "cycleStart":J
    .end local v19    # "includeCycle":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 3079
    .end local v8    # "cycleEnd":J
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_12

    .line 3080
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v15

    .line 3081
    .local v15, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 3085
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v15}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 3086
    .local v28, "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3087
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-interface/range {v12 .. v17}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 3095
    .end local v15    # "position":I
    .end local v28    # "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :goto_5
    return-void

    .line 3090
    .restart local v15    # "position":I
    .restart local v28    # "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_5

    .line 3093
    .end local v15    # "position":I
    .end local v28    # "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_5
.end method

.method private updateDataCompressionSwitchContainer(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 6822
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6823
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6825
    :cond_0
    return-void

    .line 6823
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateDataCompressionSwitchView()V
    .locals 3

    .prologue
    .line 6789
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataCompressionSwitchView mIsDataCompressionEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6790
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 6791
    const-string v0, "DataUsage"

    const-string v1, "mDataCompressionSwitchView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6792
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 6794
    :cond_0
    return-void
.end method

.method private updateDetailData()V
    .locals 31

    .prologue
    .line 3813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v6

    .line 3814
    .local v6, "start":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v8

    .line 3815
    .local v8, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3817
    .local v10, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v21

    .line 3819
    .local v21, "context":Landroid/content/Context;
    const/4 v12, 0x0

    .line 3820
    .local v12, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v4, :cond_7

    .line 3822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v5, v4, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 3823
    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v4, v14

    .line 3824
    .local v22, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v5, v4, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 3825
    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v4, v14

    .line 3826
    .local v24, "foregroundBytes":J
    add-long v28, v22, v24

    .line 3828
    .local v28, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3831
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static/range {v21 .. v23}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3835
    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v4, :cond_1

    .line 3836
    sget v4, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 3837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static/range {v21 .. v23}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3847
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v13, v4, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v20, 0x0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v20}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 3849
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 3851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3865
    .end local v22    # "defaultBytes":J
    .end local v24    # "foregroundBytes":J
    .end local v28    # "totalBytes":J
    :goto_1
    if-eqz v12, :cond_a

    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v28, v4, v14

    .line 3868
    .restart local v28    # "totalBytes":J
    :goto_2
    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    .line 3870
    .local v30, "totalPhrase":Ljava/lang/String;
    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v4, :cond_2

    .line 3871
    sget v4, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 3872
    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    .line 3878
    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKLookChart()Z

    move-result v4

    if-nez v4, :cond_c

    .line 3879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3887
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "3g"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "4g"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3889
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3903
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppSavedTV:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    if-eqz v4, :cond_5

    .line 3905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3908
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary;->mAppSavedTV:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v5, v5, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/datasaving/DataSavingHelper;->getSavedBytesByUid(IJJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settings/datasaving/DataSavingHelper;->getUsageText(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3913
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 3914
    return-void

    .line 3839
    .end local v30    # "totalPhrase":Ljava/lang/String;
    .restart local v22    # "defaultBytes":J
    .restart local v24    # "foregroundBytes":J
    :cond_6
    sget v4, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3840
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static/range {v21 .. v23}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3854
    .end local v22    # "defaultBytes":J
    .end local v24    # "foregroundBytes":J
    .end local v28    # "totalBytes":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v4, :cond_8

    .line 3855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v13, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v20, 0x0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v20}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 3857
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKLookChart()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3861
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v13, v6, v7, v8, v9}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v4, v5, v13, v14}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 3865
    :cond_a
    const-wide/16 v28, 0x0

    goto/16 :goto_2

    .line 3873
    .restart local v28    # "totalBytes":J
    .restart local v30    # "totalPhrase":Ljava/lang/String;
    :cond_b
    sget v4, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 3874
    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_3

    .line 3881
    :cond_c
    move-object/from16 v0, v21

    invoke-static {v0, v6, v7, v8, v9}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v26

    .line 3883
    .local v26, "rangePhrase":Ljava/lang/String;
    const v27, 0x7f0e0ca5

    .line 3884
    .local v27, "summaryRes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v30, v5, v13

    const/4 v13, 0x1

    aput-object v26, v5, v13

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/android/settings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 3892
    .end local v26    # "rangePhrase":Ljava/lang/String;
    .end local v27    # "summaryRes":I
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    if-nez v4, :cond_e

    .line 3893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 3895
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 3899
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private updateMenuTitles()V
    .locals 2

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0e0c65

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1822
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    .line 1823
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0e0c68

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1828
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_2

    .line 1829
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0e0c6a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1833
    :goto_2
    return-void

    .line 1819
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0e0c64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1825
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0e0c67

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1831
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0e0c69

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 12
    .param p1, "refreshCycle"    # Z

    .prologue
    .line 2827
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2828
    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2830
    .local v1, "disableAtLimitVisible":Z
    const/4 v2, 0x0

    .line 2831
    .local v2, "isAirplaneMode":Z
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2833
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v2, 0x1

    .line 2837
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 2839
    .local v4, "isToddlerMode":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2840
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "toddler_mode_switch"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    const/4 v4, 0x1

    .line 2843
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isRoamingArea()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2846
    :cond_2
    const/4 v0, 0x0

    .line 2847
    const/4 v1, 0x0

    .line 2851
    :cond_3
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2852
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 2853
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2854
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 2856
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2860
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2861
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "mobile_data_question"

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_8

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2866
    :cond_4
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    if-nez v6, :cond_9

    .line 2867
    const-string v6, "DataUsage"

    const-string v7, "mPolicyEditor is null. stop update policy"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    :cond_5
    :goto_3
    return-void

    .line 2833
    .end local v4    # "isToddlerMode":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 2840
    .restart local v4    # "isToddlerMode":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 2861
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 2871
    :cond_9
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    .line 2872
    .local v5, "policy":Landroid/net/NetworkPolicy;
    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePolicy :mPolicyEditor ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mTemplate ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePolicy :policy ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    invoke-direct {p0, v5}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->isMobileDataAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    if-nez v6, :cond_1d

    .line 2877
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v6

    if-nez v6, :cond_18

    .line 2878
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2879
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    .line 2887
    :goto_4
    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v6, :cond_a

    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v6, :cond_1b

    .line 2888
    :cond_a
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2892
    :goto_5
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    if-eqz v5, :cond_1c

    iget-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1c

    const/4 v6, 0x1

    :goto_6
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2894
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2895
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v6, v5}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 2907
    :cond_b
    :goto_7
    iget-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2908
    const/4 v0, 0x0

    .line 2909
    const/4 v1, 0x0

    .line 2913
    :cond_c
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v6, :cond_d

    .line 2914
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 2916
    const-string v6, "DataUsage"

    const-string v7, "updatePolicy(), mDataEnabledView.setVisibility(View.GONE) for CTC model"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2922
    :cond_d
    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 2923
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2928
    :cond_e
    :goto_9
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    if-eqz v6, :cond_f

    .line 2929
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    if-eqz v0, :cond_22

    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2930
    :cond_f
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    if-eqz v6, :cond_10

    .line 2931
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    if-eqz v0, :cond_23

    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2932
    :cond_10
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    if-eqz v6, :cond_11

    .line 2933
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    if-eqz v0, :cond_24

    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2935
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    if-eqz v6, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_12

    .line 2936
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    if-eqz v0, :cond_25

    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2937
    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_13

    .line 2938
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v6

    if-nez v6, :cond_26

    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2939
    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    if-eqz v6, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_14

    .line 2940
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    if-eqz v0, :cond_27

    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2941
    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_15

    .line 2942
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v6

    if-eqz v6, :cond_28

    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2945
    :cond_15
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    if-eqz v6, :cond_16

    .line 2946
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_29

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v3, 0x1

    .line 2947
    .local v3, "isAppRestritEnable":Z
    :goto_11
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    if-eqz v0, :cond_2a

    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2948
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2949
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v6}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v6

    if-nez v6, :cond_2b

    const v6, 0x7f0e0e95

    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_13
    invoke-static {v7, v6}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2950
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    invoke-static {v6, v3}, Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    .line 2952
    .end local v3    # "isAppRestritEnable":Z
    :cond_16
    if-eqz p1, :cond_17

    .line 2954
    invoke-direct {p0, v5}, Lcom/android/settings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 2958
    :cond_17
    iget-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v6, :cond_5

    .line 2959
    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updateDataCompressionSwitchContainer(Z)V

    goto/16 :goto_3

    .line 2881
    :cond_18
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v5, :cond_19

    iget-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    :goto_14
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2882
    if-eqz v5, :cond_1a

    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1a

    const/4 v6, 0x1

    :goto_15
    sput-boolean v6, Lcom/android/settings/DataUsageSummary;->mLimitCheck:Z

    .line 2883
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    goto/16 :goto_4

    .line 2881
    :cond_19
    const/4 v6, 0x0

    goto :goto_14

    .line 2882
    :cond_1a
    const/4 v6, 0x0

    goto :goto_15

    .line 2890
    :cond_1b
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 2892
    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 2900
    :cond_1d
    const/4 v1, 0x0

    .line 2902
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2904
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto/16 :goto_7

    .line 2919
    :cond_1e
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_1f

    const/4 v6, 0x0

    :goto_16
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_1f
    const/16 v6, 0x8

    goto :goto_16

    .line 2925
    :cond_20
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v6, :cond_e

    .line 2926
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_21

    const/4 v6, 0x0

    :goto_17
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_21
    const/16 v6, 0x8

    goto :goto_17

    .line 2929
    :cond_22
    const/16 v6, 0x8

    goto/16 :goto_a

    .line 2931
    :cond_23
    const/16 v6, 0x8

    goto/16 :goto_b

    .line 2933
    :cond_24
    const/16 v6, 0x8

    goto/16 :goto_c

    .line 2936
    :cond_25
    const/16 v6, 0x8

    goto/16 :goto_d

    .line 2938
    :cond_26
    const/16 v6, 0x8

    goto/16 :goto_e

    .line 2940
    :cond_27
    const/16 v6, 0x8

    goto/16 :goto_f

    .line 2942
    :cond_28
    const/16 v6, 0x8

    goto/16 :goto_10

    .line 2946
    :cond_29
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2947
    .restart local v3    # "isAppRestritEnable":Z
    :cond_2a
    const/16 v6, 0x8

    goto/16 :goto_12

    .line 2949
    :cond_2b
    const v6, 0x7f0e0e96

    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_13
.end method

.method private updateSavedDataCircleView()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 6868
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    if-nez v1, :cond_1

    .line 6887
    :cond_0
    :goto_0
    return-void

    .line 6871
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    if-eqz v1, :cond_2

    .line 6872
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v2}, Lcom/android/settings/datasaving/SavedDataCircleView;->setVisibility(I)V

    .line 6873
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v2}, Lcom/android/settings/datasaving/SavedDataCircleView;->setVisibility(I)V

    .line 6874
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_0

    .line 6875
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/datasaving/DataSavingHelper;->getSavedBytesForAllUid(JJ)J

    move-result-wide v2

    long-to-float v1, v2

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getTotalData()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    .line 6878
    .local v0, "savedPercentage":F
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v0}, Lcom/android/settings/datasaving/SavedDataCircleView;->setPercent(F)V

    .line 6879
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    invoke-virtual {v1}, Lcom/android/settings/datasaving/SavedDataCircleView;->invalidate()V

    .line 6880
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v0}, Lcom/android/settings/datasaving/SavedDataCircleView;->setPercent(F)V

    .line 6881
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

    invoke-virtual {v1}, Lcom/android/settings/datasaving/SavedDataCircleView;->invalidate()V

    goto :goto_0

    .line 6884
    .end local v0    # "savedPercentage":F
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v3}, Lcom/android/settings/datasaving/SavedDataCircleView;->setVisibility(I)V

    .line 6885
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v3}, Lcom/android/settings/datasaving/SavedDataCircleView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSavedTvState()V
    .locals 9

    .prologue
    const v8, 0x7f0e16f2

    const/16 v2, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6797
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 6819
    :goto_0
    return-void

    .line 6801
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    if-eqz v1, :cond_2

    .line 6802
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6803
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedTVLand:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6804
    const-string v0, ""

    .line 6806
    .local v0, "savedString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_1

    .line 6807
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/datasaving/DataSavingHelper;->getSavedBytesForAllUid(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/settings/datasaving/DataSavingHelper;->getUsageText(J)Ljava/lang/String;

    move-result-object v0

    .line 6811
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6813
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedTVLand:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6816
    .end local v0    # "savedString":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6817
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSavedTVLand:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSavingState()V
    .locals 2

    .prologue
    .line 6863
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSavingStateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mUpdateSavingStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6864
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSavingStateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mUpdateSavingStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6865
    return-void
.end method

.method private updateTabs()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2064
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2065
    .local v0, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 2067
    iput v9, p0, Lcom/android/settings/DataUsageSummary;->mIndexNum:I

    .line 2069
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 2070
    .local v4, "simCount":I
    const-string v7, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "simCount"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->toString()Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    .line 2073
    .local v6, "sirs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v6, :cond_1

    .line 2074
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 2075
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-le v4, v8, :cond_0

    move v7, v8

    :goto_1
    invoke-direct {p0, v0, v5, v7}, Lcom/android/settings/DataUsageSummary;->addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    goto :goto_0

    :cond_0
    move v7, v9

    goto :goto_1

    .line 2078
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2079
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "ent1"

    const v11, 0x7f0e0c83

    invoke-direct {p0, v10, v11}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2081
    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v7, :cond_3

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2082
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "wifi"

    const v11, 0x7f0e0c7d

    invoke-direct {p0, v10, v11}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2085
    :cond_3
    iget-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2086
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "ethernet"

    const v11, 0x7f0e0c7e

    invoke-direct {p0, v10, v11}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2089
    :cond_4
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-nez v7, :cond_6

    move v3, v8

    .line 2090
    .local v3, "noTabs":Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-le v7, v8, :cond_7

    move v2, v8

    .line 2091
    .local v2, "multipleTabs":Z
    :goto_3
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_8

    :goto_4
    invoke-virtual {v7, v9}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 2092
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 2093
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2095
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    .line 2099
    :goto_5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 2106
    :cond_5
    :goto_6
    return-void

    .end local v2    # "multipleTabs":Z
    .end local v3    # "noTabs":Z
    :cond_6
    move v3, v9

    .line 2089
    goto :goto_2

    .restart local v3    # "noTabs":Z
    :cond_7
    move v2, v9

    .line 2090
    goto :goto_3

    .line 2091
    .restart local v2    # "multipleTabs":Z
    :cond_8
    const/16 v9, 0x8

    goto :goto_4

    .line 2097
    :cond_9
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_5

    .line 2100
    :cond_a
    if-eqz v3, :cond_5

    .line 2102
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    goto :goto_6
.end method


# virtual methods
.method byteToLong([BII)J
    .locals 10
    .param p1, "data"    # [B
    .param p2, "idx_from"    # I
    .param p3, "idx_to"    # I

    .prologue
    .line 6189
    const-wide/16 v2, 0x0

    .line 6190
    .local v2, "value":J
    array-length v1, p1

    if-ge v1, p3, :cond_0

    move-wide v4, v2

    .line 6195
    .end local v2    # "value":J
    .local v4, "value":J
    :goto_0
    return-wide v4

    .line 6192
    .end local v4    # "value":J
    .restart local v2    # "value":J
    :cond_0
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_1
    if-lt v0, p2, :cond_1

    .line 6193
    const/16 v1, 0x8

    shl-long v6, v2, v1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long v2, v6, v8

    .line 6192
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move-wide v4, v2

    .line 6195
    .end local v2    # "value":J
    .restart local v4    # "value":J
    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 518
    const/16 v0, 0x25

    return v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5661
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 5662
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 5665
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 5667
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 5678
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 5670
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 5671
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5674
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 5678
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isVolte()Z
    .locals 2

    .prologue
    .line 1644
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1661
    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1662
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wifi"

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1663
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1664
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1665
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1672
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    .line 1674
    :cond_2
    return-void

    .line 1667
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1668
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 851
    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 852
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 853
    .local v1, "context":Landroid/content/Context;
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    .line 856
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    .line 859
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_Setting_SupportRoamingReduction"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/DataUsageSummary;->bSupportRoamingReduction:Z

    .line 862
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v6, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "enterprise_policy"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 866
    :cond_0
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v6, :cond_1

    .line 867
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 871
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 872
    .local v5, "sSalesCode":Ljava/lang/String;
    const-string v6, "VZW"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sput-boolean v7, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    .line 875
    :cond_2
    const-string v6, "SPR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "VMU"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "BST"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "XAS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 876
    :cond_3
    sput-boolean v7, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    .line 880
    :cond_4
    const-string v6, "TMB"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "TMK"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    sput-boolean v7, Lcom/android/settings/DataUsageSummary;->isTMB:Z

    .line 882
    :cond_6
    const-string v6, "ATT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sput-boolean v7, Lcom/android/settings/DataUsageSummary;->isATT:Z

    .line 885
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v6

    if-eqz v6, :cond_8

    sput-boolean v7, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    .line 886
    :cond_8
    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v6, :cond_9

    .line 887
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    .line 888
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->connectToRilService_lifetime()V

    .line 892
    :cond_9
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 894
    const-string v6, "netstats"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 896
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 897
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 898
    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 899
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 901
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "data_usage"

    invoke-virtual {v6, v9, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 903
    new-instance v6, Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v6, v9}, Lcom/android/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    .line 904
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v6}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 906
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    .line 907
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->initMobileTabTag(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    .line 910
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 911
    const-string v6, "DataUsage"

    const-string v9, "No bandwidth control; leaving"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :cond_a
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v6}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 927
    :goto_1
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "show_wifi"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 928
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "show_ethernet"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 931
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 932
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 933
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 936
    :cond_b
    new-instance v6, Lcom/android/settings/net/UidDetailProvider;

    invoke-direct {v6, v1}, Lcom/android/settings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 938
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 939
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_c

    .line 940
    const-string v6, "showAppImmediatePkg"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    .line 944
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 945
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 946
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v9, "show_wifi"

    iget-boolean v10, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 951
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "data_usage_display_unit"

    const/4 v10, 0x2

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    .line 954
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 955
    .local v4, "intFltr":Landroid/content/IntentFilter;
    const-string v6, "com.android.settings.ACTION_DATA_KEY_NEGATIVE"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    const-string v6, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v4, v11, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 959
    invoke-virtual {p0, v7}, Lcom/android/settings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 962
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_Common_SupportHuxPco"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 963
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "background_data_by_pco"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mPCOSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 968
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 970
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-virtual {v6, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "toddler_mode_switch"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 975
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v9, 0x64

    if-lt v6, v9, :cond_11

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    .line 979
    iget-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v6, :cond_10

    .line 980
    const-string v6, "data compression"

    const-string v7, "data compression check state and binservice"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    .line 982
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/datasaving/DataSavingHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/datasaving/DataSavingHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    .line 983
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mSSCListener:Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTSCListener:Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/datasaving/DataSavingHelper;->registerServiceConnectionListener(Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;)V

    .line 984
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-virtual {v6}, Lcom/android/settings/datasaving/DataSavingHelper;->bindServices()V

    .line 986
    :cond_10
    return-void

    .line 914
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v4    # "intFltr":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 915
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "DataUsage"

    const-string v9, "No bandwidth control; leaving"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 921
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 922
    .restart local v2    # "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 923
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 924
    .local v3, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    .end local v3    # "e1":Ljava/lang/IllegalStateException;
    .restart local v0    # "arguments":Landroid/os/Bundle;
    .restart local v4    # "intFltr":Landroid/content/IntentFilter;
    :cond_11
    move v6, v8

    .line 975
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1678
    const v0, 0x7f140003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1680
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v0, :cond_0

    .line 1681
    const v0, 0x7f0d06ba

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1683
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 30
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 992
    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 993
    .local v10, "context":Landroid/content/Context;
    const v24, 0x7f04009f

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, p2

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    .line 996
    .local v23, "view":Landroid/view/View;
    const v24, 0x1020012

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TabHost;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 997
    const v24, 0x7f0d01c1

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 998
    const v24, 0x1020013

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TabWidget;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 999
    const v24, 0x102000a

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ListView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 1002
    .local v6, "ab":Landroid/app/ActionBar;
    if-eqz v6, :cond_0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setElevation(F)V

    .line 1006
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v24

    const/high16 v25, 0x2000000

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    const/16 v21, 0x1

    .line 1008
    .local v21, "shouldInset":Z
    :goto_0
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TabHost;->setup()V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1016
    const v24, 0x7f04009a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-virtual/range {v24 .. v27}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1023
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    move/from16 v24, v0

    if-lez v24, :cond_1

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    move/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1031
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d019c

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d019d

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d0198

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    .line 1035
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_usage_enable_mobile"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1041
    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportVolteSettings(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1047
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoringListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16c4

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16c9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1058
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_2

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1062
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mRestrcitNetworkListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16e5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1067
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_3

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1073
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1074
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_compression_enable_key"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionEnableListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16f0

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16f1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d0199

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mChartSavedTV:Landroid/widget/TextView;

    .line 1093
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_roaming_enable_mobile"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1098
    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportVolteSettings(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1102
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v24

    if-eqz v24, :cond_6

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v14

    .line 1104
    .local v14, "isAppRestritEnable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "app_data_restriction"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mRestrcitAppDataListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v24

    if-nez v24, :cond_f

    const v24, 0x7f0e0e95

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v24

    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummaryColor(Landroid/view/View;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    .line 1114
    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e1680

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1119
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1122
    .end local v14    # "isAppRestritEnable":Z
    :cond_6
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_usage_confirm_boot"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1131
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e108a

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1137
    :cond_7
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_usage_disable_mobile_limit"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-nez v24, :cond_8

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1153
    :cond_8
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    sget-boolean v24, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v24, :cond_9

    sget-boolean v24, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v24, :cond_a

    .line 1162
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1168
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v24

    if-eqz v24, :cond_13

    .line 1169
    const/4 v9, 0x0

    .line 1171
    .local v9, "category":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.samsung.android.app.sreminder"

    const/16 v26, 0x80

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1173
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1174
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v24, "lifeservice.category.OP"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1175
    const-string v24, "DataUsage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "result:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1181
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :goto_4
    if-eqz v9, :cond_13

    .line 1182
    const/16 v17, 0x0

    .line 1183
    .local v17, "mSavedReadingModeNums":I
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 1184
    const-string v24, ","

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v17, v0

    .line 1187
    :cond_b
    const/16 v19, 0x0

    .line 1189
    .local v19, "res":Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.samsung.android.app.sreminder"

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v19

    .line 1195
    :goto_5
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1196
    .local v16, "mSavedLabel":[Ljava/lang/String;
    if-eqz v19, :cond_11

    .line 1197
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    move/from16 v0, v17

    if-ge v12, v0, :cond_11

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    const-string v25, "string"

    const-string v26, "com.samsung.android.app.sreminder"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1200
    .local v13, "id":I
    if-eqz v13, :cond_c

    .line 1201
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v16, v12

    .line 1197
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1006
    .end local v9    # "category":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "id":I
    .end local v16    # "mSavedLabel":[Ljava/lang/String;
    .end local v17    # "mSavedReadingModeNums":I
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v21    # "shouldInset":Z
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1045
    .restart local v21    # "shouldInset":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1111
    .restart local v14    # "isAppRestritEnable":Z
    :cond_f
    const v24, 0x7f0e0e96

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2

    .line 1117
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e167e

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 1176
    .end local v14    # "isAppRestritEnable":Z
    .restart local v9    # "category":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1177
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "DataUsage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to load meta-data, NameNotFound: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1178
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v11

    .line 1179
    .local v11, "e":Ljava/lang/NullPointerException;
    const-string v24, "DataUsage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to load meta-data, NullPointer: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v11}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1191
    .end local v11    # "e":Ljava/lang/NullPointerException;
    .restart local v17    # "mSavedReadingModeNums":I
    .restart local v19    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v11

    .line 1193
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_5

    .line 1206
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "mSavedLabel":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalanceListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalanceListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v25, v16, v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1218
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v24

    if-nez v24, :cond_13

    .line 1219
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1225
    .end local v9    # "category":Ljava/lang/String;
    .end local v16    # "mSavedLabel":[Ljava/lang/String;
    .end local v17    # "mSavedReadingModeNums":I
    .end local v19    # "res":Landroid/content/res/Resources;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mManualCalibrationListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16c8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1230
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v24

    if-nez v24, :cond_14

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1233
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mOperatorSetListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16c5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1238
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1244
    :cond_15
    new-instance v24, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02013b

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e0cac

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1253
    sget-boolean v24, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v24, :cond_16

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1257
    :cond_16
    new-instance v24, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02013b

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e0cad

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1266
    sget-boolean v24, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v24, :cond_17

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1270
    :cond_17
    const v24, 0x7f040171

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e0cae

    invoke-static/range {v24 .. v25}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1274
    sget-boolean v24, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v24, :cond_18

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1279
    :cond_18
    const v24, 0x7f040098

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_usage_cycle"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d018f

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Spinner;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    const v25, 0x7f0e0c61

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1283
    new-instance v24, Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Lcom/android/settings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const v25, 0x7f0a0157

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Context;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0190

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1289
    const v24, 0x7f0d0187

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 1290
    const v24, 0x7f0d0188

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mDetailedSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d0185

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    .line 1295
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 1296
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10}, Lcom/android/settings/DataUsageSummary;->initDonutLayout(Landroid/view/View;Landroid/content/Context;)V

    .line 1298
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/widget/ChartDataUsageView;->setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v24, v0

    const-wide v26, 0x18fff00000L

    const-wide v28, 0x1900000000L

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartDataUsageView;->setMaximumSetableValue(JJ)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/settings/widget/DataUsageListView;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->setListView(Lcom/android/settings/widget/DataUsageListView;)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d0191

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d00b3

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0192

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0193

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0194

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0197

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d00bb

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 1316
    sget-boolean v24, Lcom/android/settings/DataUsageSummary;->bSupportRoamingReduction:Z

    if-eqz v24, :cond_20

    .line 1317
    new-instance v24, Landroid/widget/Spinner;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1319
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x1090009

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v15, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1321
    .local v15, "mRestrictAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->bg_Restriction_resId:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->bg_Restriction_resId:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->bg_Restriction_resId:[I

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/settings/DataUsageSummary$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary$8;-><init>(Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->inflateDropDownPreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 1344
    .end local v15    # "mRestrictAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1348
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1a

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0195

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0196

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSavedTV:Landroid/widget/TextView;

    .line 1355
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d019a

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d019b

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    .line 1358
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    move/from16 v24, v0

    if-nez v24, :cond_1b

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKLookChart()Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1367
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x1020004

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d019f

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d019e

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 1370
    .local v18, "mUpgBtn":Landroid/widget/Button;
    new-instance v24, Lcom/android/settings/DataUsageSummary$9;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary$9;-><init>(Lcom/android/settings/DataUsageSummary;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1382
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    .line 1383
    .local v20, "sSalesCode":Ljava/lang/String;
    const-string v24, "TMB"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1d

    const-string v24, "TMK"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_21

    :cond_1d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v24

    if-nez v24, :cond_21

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v24

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_21

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d019b

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f0e1078

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    :goto_8
    sget-boolean v24, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v24, :cond_1e

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d019b

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f0e1079

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    :cond_1e
    const-string v24, "user"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 1394
    .local v22, "um":Landroid/os/UserManager;
    new-instance v24, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/settings/net/UidDetailProvider;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v24, v0

    sget-boolean v25, Lcom/android/settings/DataUsageSummary;->mLimitCheck:Z

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v26, "mobile_data_question"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    const/16 v24, 0x1

    :goto_9
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1401
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary;->showRequestedAppIfNeeded(Landroid/view/View;)V

    .line 1404
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    invoke-static {v10}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_1f

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    :cond_1f
    return-object v23

    .line 1338
    .end local v18    # "mUpgBtn":Landroid/widget/Button;
    .end local v20    # "sSalesCode":Ljava/lang/String;
    .end local v22    # "um":Landroid/os/UserManager;
    :cond_20
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 1386
    .restart local v18    # "mUpgBtn":Landroid/widget/Button;
    .restart local v20    # "sSalesCode":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const v26, 0x7f0d019e

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 1399
    .restart local v22    # "um":Landroid/os/UserManager;
    :cond_22
    const/16 v24, 0x0

    goto/16 :goto_9
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1978
    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 1979
    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    .line 1980
    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 1981
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1982
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1983
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v1}, Lcom/android/settings/net/UidDetailProvider;->clearCache()V

    .line 1985
    :cond_0
    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 1987
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 1988
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1989
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1990
    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    .line 1993
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v1}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 1995
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1996
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1997
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1999
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2000
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2004
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportHuxPco"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2005
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPCOSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2010
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v1, :cond_4

    .line 2011
    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    .line 2012
    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    .line 2013
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSSCListener:Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTSCListener:Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/datasaving/DataSavingHelper;->unRegisterServiceConnectionListener(Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;)V

    .line 2014
    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    .line 2017
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;

    if-eqz v1, :cond_5

    .line 2019
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2024
    :cond_5
    :goto_0
    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onDestroy()V

    .line 2025
    return-void

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 1846
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    move v11, v6

    .line 1973
    :goto_1
    :sswitch_0
    return v11

    .line 1848
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 1851
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_1

    move v10, v11

    .line 1852
    .local v10, "restrictBackground":Z
    :goto_2
    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v2, "UDS"

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "udsState"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_2

    .line 1853
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_1

    .end local v10    # "restrictBackground":Z
    :cond_1
    move v10, v6

    .line 1851
    goto :goto_2

    .line 1854
    .restart local v10    # "restrictBackground":Z
    :cond_2
    if-eqz v10, :cond_3

    .line 1855
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_1

    .line 1858
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_1

    .line 1863
    .end local v10    # "restrictBackground":Z
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-nez v1, :cond_4

    move v1, v11

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 1864
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1865
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v1, :cond_5

    .line 1866
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings"

    const-string v3, "SHWI"

    const/16 v4, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1870
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    .line 1871
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto :goto_1

    :cond_4
    move v1, v6

    .line 1863
    goto :goto_3

    .line 1868
    :cond_5
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings"

    const-string v3, "SHWI"

    invoke-static {v1, v2, v3, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 1875
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-nez v1, :cond_6

    move v6, v11

    :cond_6
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 1876
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1877
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    .line 1878
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_1

    .line 1914
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1915
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e0ca6

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1

    .line 1921
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :sswitch_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e107e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100a0

    sget v3, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v4, Lcom/android/settings/DataUsageSummary$12;

    invoke-direct {v4, p0}, Lcom/android/settings/DataUsageSummary$12;-><init>(Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    .line 1933
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1941
    :sswitch_7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.helphub"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1942
    .local v8, "info":Landroid/content/pm/PackageInfo;
    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v1, v1, 0xa

    if-eq v1, v11, :cond_0

    .line 1946
    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v1, v1, 0xa

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1951
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1952
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "data_usage_vzw_spr"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    invoke-virtual {p0, v9}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1966
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 1968
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1954
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_7
    :try_start_1
    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v1, v1, 0xa

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1962
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1963
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v1, "helphub:appid"

    const-string v2, "data_usage"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1964
    invoke-virtual {p0, v9}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1846
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0d06b4 -> :sswitch_2
        0x7f0d06b5 -> :sswitch_3
        0x7f0d06b6 -> :sswitch_4
        0x7f0d06b7 -> :sswitch_5
        0x7f0d06b8 -> :sswitch_0
        0x7f0d06ba -> :sswitch_6
        0x7f0d06bb -> :sswitch_7
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1624
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1625
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1626
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    .line 1630
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isVolte()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/DataUsageSummary;->isATT:Z

    if-nez v1, :cond_1

    .line 1631
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1633
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1636
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v1, :cond_2

    .line 1637
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/datasaving/DataSavingHelper;->unregisterSavingStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V

    .line 1640
    :cond_2
    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onPause()V

    .line 1641
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1687
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1688
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 1689
    .local v0, "appDetailMode":Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    .line 1690
    .local v9, "sSalesCode":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    move v4, v11

    .line 1692
    .local v4, "isOwner":Z
    :goto_0
    if-nez v1, :cond_3

    .line 1693
    const-string v10, "DataUsage"

    const-string v11, "onPrepareOptionsMenu : context null "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_1
    :goto_1
    return-void

    .end local v4    # "isOwner":Z
    :cond_2
    move v4, v12

    .line 1690
    goto :goto_0

    .line 1697
    .restart local v4    # "isOwner":Z
    :cond_3
    const v10, 0x7f0d06b5

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    .line 1699
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-eqz v10, :cond_4

    .line 1700
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1701
    iget-object v13, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_14

    move v10, v11

    :goto_2
    invoke-interface {v13, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1707
    :cond_4
    :goto_3
    const v10, 0x7f0d06b6

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    .line 1708
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-eqz v10, :cond_5

    .line 1709
    invoke-virtual {p0, v1}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1710
    iget-object v13, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_16

    move v10, v11

    :goto_4
    invoke-interface {v13, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1716
    :cond_5
    :goto_5
    const v10, 0x7f0d06b4

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 1717
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v10, :cond_6

    .line 1718
    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v10

    if-ne v10, v11, :cond_18

    .line 1719
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1725
    :cond_6
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v10

    if-eqz v10, :cond_7

    .line 1726
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1730
    :cond_7
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v10, :cond_8

    .line 1731
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v13, "enterprise_policy"

    invoke-virtual {v10, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v10, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1734
    :cond_8
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v10, :cond_9

    .line 1735
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 1736
    .local v8, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v8, :cond_1a

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v10, :cond_1a

    invoke-virtual {v8}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v10

    if-nez v10, :cond_1a

    .line 1737
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1738
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1747
    .end local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_9
    :goto_7
    const v10, 0x7f0d06b7

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1748
    .local v5, "metered":Landroid/view/MenuItem;
    if-eqz v5, :cond_b

    .line 1749
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1c

    :cond_a
    iget-boolean v10, p0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    if-nez v10, :cond_1c

    .line 1750
    if-nez v0, :cond_1b

    move v10, v11

    :goto_8
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1754
    :goto_9
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v10

    if-eqz v10, :cond_b

    .line 1755
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1760
    :cond_b
    const v10, 0x7f0d06b8

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    .line 1761
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    if-eqz v10, :cond_c

    .line 1762
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1765
    :cond_c
    const v10, 0x7f0d06b9

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 1766
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    if-eqz v10, :cond_d

    .line 1767
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1770
    :cond_d
    const v10, 0x7f0d06bb

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1772
    .local v2, "help":Landroid/view/MenuItem;
    if-eqz v2, :cond_e

    .line 1773
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0e0d76

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "helpUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 1774
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v2, v3, v13}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1785
    .end local v3    # "helpUrl":Ljava/lang/String;
    :cond_e
    :goto_a
    iget-boolean v10, p0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v10, :cond_f

    .line 1786
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1787
    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1788
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1789
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1794
    :cond_f
    const-string v10, "TFN"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v5, :cond_10

    .line 1795
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1797
    :cond_10
    const-string v10, "AIO"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    if-eqz v5, :cond_11

    .line 1798
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1800
    :cond_11
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    .line 1803
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v13, "CscFeature_Common_SupportHuxPco"

    invoke-virtual {v10, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v10, :cond_1

    .line 1805
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "background_data_by_pco"

    invoke-static {v10, v13, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v11, :cond_21

    move v6, v11

    .line 1807
    .local v6, "restrictBackgroundbyPco":Z
    :goto_b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "background_data_by_user"

    invoke-static {v10, v13, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v11, :cond_22

    move v7, v11

    .line 1809
    .local v7, "restrictBackgroundbyUser":Z
    :goto_c
    iget-object v13, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10}, Landroid/view/MenuItem;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_23

    if-nez v6, :cond_23

    move v10, v11

    :goto_d
    invoke-interface {v13, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1810
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-nez v7, :cond_12

    iget-object v13, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v13}, Landroid/view/MenuItem;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_13

    :cond_12
    move v12, v11

    :cond_13
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .end local v2    # "help":Landroid/view/MenuItem;
    .end local v5    # "metered":Landroid/view/MenuItem;
    .end local v6    # "restrictBackgroundbyPco":Z
    .end local v7    # "restrictBackgroundbyUser":Z
    :cond_14
    move v10, v12

    .line 1701
    goto/16 :goto_2

    .line 1703
    :cond_15
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_16
    move v10, v12

    .line 1710
    goto/16 :goto_4

    .line 1712
    :cond_17
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 1721
    :cond_18
    iget-object v13, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_19

    if-eqz v4, :cond_19

    if-nez v0, :cond_19

    move v10, v11

    :goto_e
    invoke-interface {v13, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_19
    move v10, v12

    goto :goto_e

    .line 1741
    .restart local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_1a
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v10, :cond_9

    .line 1742
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .end local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v5    # "metered":Landroid/view/MenuItem;
    :cond_1b
    move v10, v12

    .line 1750
    goto/16 :goto_8

    .line 1752
    :cond_1c
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 1775
    .restart local v2    # "help":Landroid/view/MenuItem;
    .restart local v3    # "helpUrl":Ljava/lang/String;
    :cond_1d
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isSupportOnDeviceHelp()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 1776
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 1777
    :cond_1e
    sget-boolean v10, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v10, :cond_1f

    sget-boolean v10, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v10, :cond_20

    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v13, "com.samsung.helphub"

    invoke-static {v10, v13}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_20

    .line 1778
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 1780
    :cond_20
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .end local v3    # "helpUrl":Ljava/lang/String;
    :cond_21
    move v6, v12

    .line 1805
    goto/16 :goto_b

    .restart local v6    # "restrictBackgroundbyPco":Z
    :cond_22
    move v7, v12

    .line 1807
    goto/16 :goto_c

    .restart local v7    # "restrictBackgroundbyUser":Z
    :cond_23
    move v10, v12

    .line 1809
    goto/16 :goto_d
.end method

.method public onResume()V
    .locals 23

    .prologue
    .line 1456
    invoke-super/range {p0 .. p0}, Lcom/android/settings/HighlightingFragment;->onResume()V

    .line 1457
    const-string v19, "DataUsage"

    const-string v20, "onResume"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "mobile_data"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "enterprise_policy"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1466
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v9

    .line 1468
    .local v9, "mPR":Landroid/app/enterprise/PhoneRestrictionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v14

    .line 1469
    .local v14, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v14, :cond_3

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setEnabled(Z)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    .line 1473
    invoke-virtual {v14}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v19

    if-nez v19, :cond_f

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setEnabled(Z)V

    .line 1481
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v15

    .line 1482
    .local v15, "simSlotId":I
    const-string v4, "switch_traffic_settings"

    .line 1483
    .local v4, "KEY_SWITCH_ON":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_1

    .line 1484
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1486
    :cond_1
    invoke-virtual {v14}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v19

    if-nez v19, :cond_10

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1488
    const-wide/16 v20, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    .line 1490
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setEnabled(Z)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/net/UidDetailProvider;->clearCache()V

    .line 1494
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 1495
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    .line 1496
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1497
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1500
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1510
    .end local v4    # "KEY_SWITCH_ON":Ljava/lang/String;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "mPR":Landroid/app/enterprise/PhoneRestrictionPolicy;
    .end local v14    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v15    # "simSlotId":I
    :cond_3
    :goto_1
    sget-boolean v19, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v19, :cond_6

    sget-boolean v19, Lcom/android/settings/DataUsageSummary;->mIsIMSInitialized:Z

    if-nez v19, :cond_6

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 1513
    .local v5, "context":Landroid/content/Context;
    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-static {v0, v5}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    sput-object v19, Lcom/android/settings/DataUsageSummary;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 1514
    sget-object v19, Lcom/android/settings/DataUsageSummary;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v19, :cond_5

    .line 1515
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v10, v0, [I

    const/16 v19, 0x0

    const/16 v20, 0x5d

    aput v20, v10, v19

    .line 1516
    .local v10, "reqFields":[I
    sget-object v19, Lcom/android/settings/DataUsageSummary;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v12

    .line 1517
    .local v12, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v12, :cond_4

    const-string v19, "1"

    const/16 v20, 0x5d

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1518
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/DataUsageSummary;->isVolteProvisioned:Z

    .line 1521
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v11, v0, [I

    const/16 v19, 0x0

    const/16 v20, 0x84

    aput v20, v11, v19

    .line 1522
    .local v11, "reqFields_VoWiFi":[I
    sget-object v19, Lcom/android/settings/DataUsageSummary;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v13

    .line 1523
    .local v13, "result_VoWiFi":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v13, :cond_5

    const-string v19, "1"

    const/16 v20, 0x84

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1524
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/DataUsageSummary;->isVoWiFiProvisioned:Z

    .line 1527
    .end local v10    # "reqFields":[I
    .end local v11    # "reqFields_VoWiFi":[I
    .end local v12    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v13    # "result_VoWiFi":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_5
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/DataUsageSummary;->mIsIMSInitialized:Z

    .line 1529
    .end local v5    # "context":Landroid/content/Context;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/settings/DataUsageSummary$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary$10;-><init>(Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1537
    new-instance v19, Lcom/android/settings/DataUsageSummary$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary$11;-><init>(Lcom/android/settings/DataUsageSummary;)V

    sget-object v20, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/settings/DataUsageSummary$11;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1558
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isVolte()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v19

    if-nez v19, :cond_7

    sget-boolean v19, Lcom/android/settings/DataUsageSummary;->isATT:Z

    if-nez v19, :cond_7

    .line 1559
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 1561
    .local v18, "telephonyManager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v19, v0

    const/16 v20, 0x800

    invoke-virtual/range {v18 .. v20}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1565
    .end local v18    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_SupportHuxPco"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_SupportHuxPayg"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 1568
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1571
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1573
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v15

    .line 1574
    .restart local v15    # "simSlotId":I
    const/16 v16, -0x1

    .line 1575
    .local v16, "subId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v19

    if-eqz v19, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1576
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v19

    const/16 v20, 0x0

    aget v16, v19, v20

    .line 1578
    :cond_a
    const/16 v17, 0x0

    .line 1579
    .local v17, "switchOn":I
    const-string v4, "switch_traffic_settings"

    .line 1584
    .restart local v4    # "KEY_SWITCH_ON":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 1589
    :goto_2
    if-nez v17, :cond_11

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0e16c9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1596
    .end local v4    # "KEY_SWITCH_ON":Ljava/lang/String;
    .end local v15    # "simSlotId":I
    .end local v16    # "subId":I
    .end local v17    # "switchOn":I
    :cond_b
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1600
    :cond_c
    new-instance v19, Lcom/android/settings/DataUsageSummary$StatusReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$StatusReceiver;-><init>(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;

    .line 1601
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1602
    .local v8, "mFilter":Landroid/content/IntentFilter;
    const-string v19, "com.android.settings.trafficmanager.status"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1603
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1610
    .end local v8    # "mFilter":Landroid/content/IntentFilter;
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datasaving/DataSavingHelper;->registerSavingStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V

    .line 1612
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDataCompressionSwitchView()V

    .line 1613
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 1614
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary;->updateChartSavedTV(Z)V

    .line 1621
    :cond_e
    :goto_5
    return-void

    .line 1477
    .restart local v9    # "mPR":Landroid/app/enterprise/PhoneRestrictionPolicy;
    .restart local v14    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1502
    .restart local v4    # "KEY_SWITCH_ON":Ljava/lang/String;
    .restart local v15    # "simSlotId":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setEnabled(Z)V

    .line 1503
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    goto/16 :goto_1

    .line 1585
    .end local v9    # "mPR":Landroid/app/enterprise/PhoneRestrictionPolicy;
    .end local v14    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v16    # "subId":I
    .restart local v17    # "switchOn":I
    :catch_0
    move-exception v6

    .line 1586
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v19, "DataUsage"

    const-string v20, "switchOn SettingNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1592
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/DataUsageSummary;->removePreferenceSummary(Landroid/view/View;)V

    goto/16 :goto_3

    .line 1604
    .end local v4    # "KEY_SWITCH_ON":Ljava/lang/String;
    .end local v15    # "simSlotId":I
    .end local v16    # "subId":I
    .end local v17    # "switchOn":I
    :catch_1
    move-exception v6

    .line 1605
    .local v6, "e":Ljava/lang/Exception;
    const-string v19, "DataUsage"

    const-string v20, "unregisterReceiver Exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1616
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_12
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary;->updateChartSavedTV(Z)V

    .line 1617
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateSavedDataCircleView()V

    goto :goto_5
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1649
    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onStop()V

    .line 1651
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1652
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    .line 1654
    const-string v0, "DataUsage"

    const-string v1, "onStop: unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1439
    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 1442
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1443
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 1447
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    .line 1449
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DATASLOT2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1450
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "mobile 2"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1452
    :cond_0
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 9
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2769
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2770
    .local v0, "context":Landroid/content/Context;
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2772
    .local v1, "mPhone":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2773
    const-string v7, "persist.sys.restrict_background"

    if-eqz p1, :cond_2

    const-string v4, "true"

    :goto_0
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    :cond_0
    move v2, p1

    .line 2775
    .local v2, "mRestrictBackground":Z
    const-string v4, ""

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0160

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v7, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    .line 2776
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2777
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_powersaving_mode"

    if-eqz p1, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2778
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/settings/DataUsageSummary$16;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/DataUsageSummary$16;-><init>(Lcom/android/settings/DataUsageSummary;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2788
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2793
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2794
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v4, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 2806
    :cond_1
    return-void

    .line 2773
    .end local v2    # "mRestrictBackground":Z
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_2
    const-string v4, "false"

    goto :goto_0

    .restart local v2    # "mRestrictBackground":Z
    :cond_3
    move v4, v6

    .line 2777
    goto :goto_1
.end method
