.class public Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$24;,
        Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;,
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;,
        Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    }
.end annotation


# static fields
.field public static mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private changeString:Ljava/lang/String;

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private endConnect:Landroid/view/MenuItem;

.field private extraCauseOfStart:I

.field private isChanged:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mChange_device_info:Landroid/widget/LinearLayout;

.field private mConnectTypeForLogging:Ljava/lang/String;

.field private mConnectingDevice:Ljava/lang/String;

.field private mConnectingDialogCalled:Z

.field private mConnectionRequested:Z

.field private mContext:Landroid/content/Context;

.field private mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

.field private mDLNAList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDLNAServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field private mDLNAServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

.field private mDeviceAddress:Ljava/lang/String;

.field protected mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mExtendedDisplayListener:Landroid/hardware/display/ExtendedDisplayListener;

.field private mGlobalEditDeviceName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHasOxygenPaused:Z

.field private final mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mInPickerDialog:Z

.field private mIsGalleryRunning:Z

.field private mIsKnoxMode:Z

.field private mIsMusicRunning:Z

.field private mIsPendingSetup:Z

.field private mIsVideoRunning:Z

.field private mMenu:Landroid/view/ContextMenu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mNo_device_found_layout:Landroid/widget/LinearLayout;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mPendingChanges:I

.field private mPendingDevice:Ljava/lang/String;

.field private mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field private mReadyToConnect:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private final mRestartScan:Ljava/lang/Runnable;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mScanTimeout:Ljava/lang/Runnable;

.field private final mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mSetPrevSettingsDetach:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStartWithConnectedState:Z

.field private mStarted:Z

.field protected mTurningWifiDisplayOn:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWaitingDevice:Ljava/lang/String;

.field private mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

.field protected mWifiDisplayOnSetting:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private preChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    .line 221
    const-string v0, "QIC_PAN"

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 229
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExtendedDisplayListener:Landroid/hardware/display/ExtendedDisplayListener;

    .line 549
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 987
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    .line 998
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    .line 1323
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    .line 1351
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1363
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1375
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1404
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 1554
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1622
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1865
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/ScreenSharingDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Lcom/samsung/android/allshare/ScreenSharingDevice;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->prepareConnection()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Lcom/samsung/android/allshare/media/MediaServiceProvider;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method private applyState(Z)V
    .locals 35
    .param p1, "invalidateOptions"    # Z

    .prologue
    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v31

    .line 679
    .local v31, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v13

    .line 680
    .local v13, "featureState":I
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v30

    .line 681
    .local v30, "scanState":I
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    .line 683
    .local v3, "activeDisplayState":I
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "applyState = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v13, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-nez v32, :cond_3

    .line 686
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 698
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 701
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 704
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 705
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    move/from16 v32, v0

    if-nez v32, :cond_8

    .line 706
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_6

    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v3, v0, :cond_6

    .line 707
    const-string v32, "WifiDisplaySettings"

    const-string v33, "WifiDisplay is connected.. Settings finish()"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    .line 985
    :cond_2
    :goto_1
    return-void

    .line 687
    :cond_3
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ne v13, v0, :cond_4

    .line 688
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    goto :goto_0

    .line 689
    :cond_4
    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v13, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    .line 691
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 692
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    goto/16 :goto_0

    .line 694
    :cond_5
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 695
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    .line 710
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-nez v32, :cond_8

    const/16 v32, 0x2

    move/from16 v0, v32

    if-eq v13, v0, :cond_7

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v13, v0, :cond_8

    .line 711
    :cond_7
    const-string v32, "WifiDisplaySettings"

    const-string v33, "WifiDisplay is disconnected.. Settings finish()"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    goto :goto_1

    .line 717
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_9

    .line 718
    const-string v32, "WifiDisplaySettings"

    const-string v33, "DLNA is connected.. Settings finish()"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    goto/16 :goto_1

    .line 723
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v32

    if-eqz v32, :cond_b

    const/16 v32, 0x2

    move/from16 v0, v32

    if-eq v13, v0, :cond_a

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v13, v0, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 725
    const-string v32, "WifiDisplaySettings"

    const-string v33, "applyState oxygen is ON "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    goto/16 :goto_1

    .line 732
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    .line 733
    .local v23, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 735
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ne v13, v0, :cond_3e

    .line 736
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    .line 738
    .local v2, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v10

    .line 739
    .local v10, "displays":[Landroid/hardware/display/WifiDisplay;
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "applyState displays.length = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    array-length v0, v10

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v9, Ljava/util/ArrayList;

    array-length v0, v10

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 741
    .local v9, "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    move-object v4, v10

    .local v4, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v0, v4

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    aget-object v8, v4, v16

    .line 742
    .local v8, "d":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v32

    if-eqz v32, :cond_c

    .line 743
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 746
    .end local v8    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_d
    sget-object v32, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, v32

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/display/WifiDisplay;

    .line 747
    .local v5, "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "applyState availableDisplays.length = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    array-length v0, v5

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v12

    .line 753
    .local v12, "dlnaCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v28

    .line 754
    .local v28, "routeCount":I
    const/16 v24, 0x0

    .line 755
    .local v24, "remoteDisplayRouteCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move/from16 v0, v28

    if-ge v15, v0, :cond_f

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v27

    .line 758
    .local v27, "route":Landroid/media/MediaRouter$RouteInfo;
    const/16 v32, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 759
    add-int/lit8 v24, v24, 0x1

    .line 755
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 764
    .end local v27    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/hardware/display/DisplayManager;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v20

    .line 765
    .local v20, "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->getLastConnectedDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v19

    .line 767
    .local v19, "lastConnectedDLNADevice":Landroid/hardware/display/DLNADevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/Wfd_Certification;->getCertificationModeOn()Z

    move-result v32

    if-eqz v32, :cond_10

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/Wfd_Certification;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    .line 771
    :cond_10
    if-eqz v2, :cond_1d

    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v3, v0, :cond_1d

    .line 772
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    goto/16 :goto_1

    .line 777
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_12

    .line 778
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 781
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v32, v0

    if-nez v32, :cond_14

    .line 782
    new-instance v32, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 787
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v32

    const/16 v33, 0xa

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v25

    .line 789
    .local v25, "remoteP2pMacAddr":Ljava/lang/String;
    if-eqz v25, :cond_16

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 791
    .local v11, "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 792
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDLNAPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 784
    .end local v11    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v25    # "remoteP2pMacAddr":Ljava/lang/String;
    .local v16, "i$":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    .line 797
    :cond_15
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v2, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 800
    .end local v16    # "i$":I
    :cond_16
    array-length v0, v5

    move/from16 v32, v0

    if-nez v32, :cond_1b

    if-nez v24, :cond_1b

    if-nez v12, :cond_1b

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_1b

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 805
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_17

    .line 806
    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    .line 822
    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v32, v0

    if-nez v32, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1a

    .line 823
    :cond_18
    array-length v0, v5

    move/from16 v32, v0

    if-nez v32, :cond_1f

    if-nez v24, :cond_1f

    if-nez v12, :cond_1f

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_1f

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 957
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1a

    .line 958
    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_3d

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    .line 981
    .end local v2    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v5    # "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    .end local v9    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .end local v10    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v12    # "dlnaCount":I
    .end local v15    # "i":I
    .end local v19    # "lastConnectedDLNADevice":Landroid/hardware/display/DLNADevice;
    .end local v20    # "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v21    # "len$":I
    .end local v24    # "remoteDisplayRouteCount":I
    .end local v28    # "routeCount":I
    :cond_1a
    :goto_8
    if-eqz p1, :cond_2

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 803
    .restart local v2    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v5    # "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    .restart local v9    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .restart local v10    # "displays":[Landroid/hardware/display/WifiDisplay;
    .restart local v12    # "dlnaCount":I
    .restart local v15    # "i":I
    .restart local v19    # "lastConnectedDLNADevice":Landroid/hardware/display/DLNADevice;
    .restart local v20    # "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v21    # "len$":I
    .restart local v24    # "remoteDisplayRouteCount":I
    .restart local v28    # "routeCount":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 809
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto :goto_7

    .line 812
    .restart local v16    # "i$":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_17

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_17

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 814
    .restart local v11    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v26

    .line 815
    .local v26, "retDeviceUid":Ljava/lang/String;
    if-eqz v26, :cond_1e

    .line 816
    invoke-virtual {v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1e

    .line 817
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDLNAPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_9

    .line 826
    .end local v11    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v26    # "retDeviceUid":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 827
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v32

    if-eqz v32, :cond_27

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 832
    :goto_a
    if-eqz v20, :cond_20

    .line 833
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "applyState lastConnectedDisplay.getDeviceName() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", lastConnectedDisplay.getDeviceAddress() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_20
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "applyState mDLNAList = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getBssid()Ljava/lang/String;

    move-result-object v7

    .line 837
    .local v7, "bssid":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getFrequency()I

    move-result v14

    .line 838
    .local v14, "frequency":I
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "bssid : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", frequency : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_21
    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 840
    .restart local v11    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v18

    .line 842
    .local v18, "isSupportScreenSharing":Z
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_26

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_26

    :cond_23
    if-eqz v18, :cond_24

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v14}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v32

    if-nez v32, :cond_25

    :cond_24
    if-nez v18, :cond_26

    .line 845
    :cond_25
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDLNAPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 848
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    move/from16 v32, v0

    if-eqz v32, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual {v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_28

    .line 849
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "change device to "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 851
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    .line 852
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    .line 854
    const-string v32, "CHA_DEV"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 856
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V

    goto/16 :goto_b

    .line 830
    .end local v7    # "bssid":Ljava/lang/String;
    .end local v11    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v14    # "frequency":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "isSupportScreenSharing":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 857
    .restart local v7    # "bssid":Ljava/lang/String;
    .restart local v11    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .restart local v14    # "frequency":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "isSupportScreenSharing":Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    move-object/from16 v32, v0

    if-nez v32, :cond_21

    if-eqz v18, :cond_29

    if-eqz v20, :cond_29

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_29

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v14}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v32

    if-eqz v32, :cond_29

    if-eqz v3, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_21

    if-eqz v19, :cond_21

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/DLNADevice;->getUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_21

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v32, v0

    if-nez v32, :cond_21

    .line 864
    const-string v33, "WifiDisplaySettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "last connect to "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    if-eqz v18, :cond_2c

    const-string v32, "sharing"

    :goto_c
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " device"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "QIC_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2d

    .line 868
    const-string v32, "AUTO_QIC_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 872
    :cond_2b
    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V

    goto/16 :goto_b

    .line 864
    :cond_2c
    const-string v32, "dlna"

    goto :goto_c

    .line 869
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "SHA_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2b

    .line 870
    const-string v32, "AUTO_SHA_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_d

    .line 876
    .end local v11    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v18    # "isSupportScreenSharing":Z
    :cond_2e
    move-object v4, v5

    array-length v0, v4

    move/from16 v21, v0

    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .local v17, "i$":I
    :goto_e
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3b

    aget-object v8, v4, v17

    .line 877
    .restart local v8    # "d":Landroid/hardware/display/WifiDisplay;
    const/4 v6, 0x0

    .line 878
    .local v6, "both":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v17    # "i$":I
    .local v16, "i$":Ljava/util/Iterator;
    :cond_2f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_30

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 879
    .restart local v11    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "WifiDisplay Mac Address = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " DLNA Mac Address = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2f

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v14}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v32

    if-eqz v32, :cond_2f

    .line 882
    const/4 v6, 0x1

    .line 886
    .end local v11    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    :cond_30
    if-eqz v6, :cond_32

    .line 876
    :cond_31
    :goto_f
    add-int/lit8 v16, v17, 0x1

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_e

    .line 889
    .end local v17    # "i$":I
    .local v16, "i$":Ljava/util/Iterator;
    :cond_32
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "applyState add wfd device = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {v8, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v32

    if-nez v32, :cond_33

    .line 891
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v8, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 893
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    move/from16 v32, v0

    if-eqz v32, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_34

    .line 894
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "change device to "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 897
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    .line 898
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    .line 900
    const-string v32, "CHA_DEV"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 902
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Landroid/hardware/display/WifiDisplay;)V

    goto/16 :goto_f

    .line 904
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v32, v0

    if-nez v32, :cond_35

    if-nez v3, :cond_35

    .line 906
    const-string v32, "WifiDisplaySettings"

    const-string v33, "connect for smart-school"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    .line 910
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    goto/16 :goto_f

    .line 911
    :cond_35
    if-eqz v20, :cond_38

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_38

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v32, v0

    if-nez v32, :cond_38

    if-nez v3, :cond_38

    .line 915
    const-string v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "connectLastConnection deviceInfo="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "QIC_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_37

    .line 919
    const-string v32, "AUTO_QIC_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 923
    :cond_36
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Landroid/hardware/display/WifiDisplay;)V

    goto/16 :goto_f

    .line 920
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "SHA_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_36

    .line 921
    const-string v32, "AUTO_SHA_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_10

    .line 924
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/Wfd_Certification;->getCertificationModeOn()Z

    move-result v32

    if-nez v32, :cond_31

    if-nez v30, :cond_31

    if-nez v3, :cond_31

    array-length v0, v5

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v32, v0

    if-nez v32, :cond_31

    .line 926
    const-string v32, "WifiDisplaySettings"

    const-string v33, "Only one device found"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 928
    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "QIC_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_3a

    .line 931
    const-string v32, "AUTO_QIC_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 935
    :cond_39
    :goto_11
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Landroid/hardware/display/WifiDisplay;)V

    goto/16 :goto_f

    .line 932
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "SHA_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_39

    .line 933
    const-string v32, "AUTO_SHA_PAN"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_11

    .line 943
    .end local v6    # "both":Z
    .end local v8    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "i$":I
    :cond_3b
    const/4 v15, 0x0

    :goto_12
    move/from16 v0, v28

    if-ge v15, v0, :cond_19

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v27

    .line 946
    .restart local v27    # "route":Landroid/media/MediaRouter$RouteInfo;
    const/16 v32, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v32

    if-eqz v32, :cond_3c

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v29

    .line 949
    .local v29, "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    if-eqz v29, :cond_3c

    .line 950
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 943
    .end local v29    # "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    :cond_3c
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 961
    .end local v7    # "bssid":Ljava/lang/String;
    .end local v14    # "frequency":I
    .end local v17    # "i$":I
    .end local v27    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_8

    .line 965
    .end local v2    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v5    # "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    .end local v9    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .end local v10    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v12    # "dlnaCount":I
    .end local v15    # "i":I
    .end local v19    # "lastConnectedDLNADevice":Landroid/hardware/display/DLNADevice;
    .end local v20    # "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v21    # "len$":I
    .end local v24    # "remoteDisplayRouteCount":I
    .end local v28    # "routeCount":I
    :cond_3e
    const/16 v32, 0x2

    move/from16 v0, v32

    if-eq v13, v0, :cond_3f

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v13, v0, :cond_1a

    .line 967
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "device_policy"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/admin/DevicePolicyManager;

    .line 969
    .local v22, "mDPM":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    move-object/from16 v32, v0

    if-nez v32, :cond_40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_42

    :cond_40
    if-eqz v22, :cond_41

    const/16 v32, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v32

    if-eqz v32, :cond_42

    :cond_41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v32, v0

    if-nez v32, :cond_1a

    .line 971
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    if-eqz v32, :cond_43

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->cancel()V

    .line 975
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->closeContextMenu()V

    .line 976
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setGuidedActionBarClickable(Z)V

    goto/16 :goto_8
.end method

.method private canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "dlna"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    .line 1135
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportTDLS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getWlanFrequency()I

    move-result v0

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private connectAllShareFW()V
    .locals 4

    .prologue
    .line 1299
    const-string v1, "WifiDisplaySettings"

    const-string v2, "connectAllShareFW"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :try_start_0
    const-string v1, "WifiDisplaySettings"

    const-string v2, "ServiceConnector.createServiceProvider"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    const-string v3, "com.samsung.android.allshare.media"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1310
    :goto_0
    return-void

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAllShareFW - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1305
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAllShareFW - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1307
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1308
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAllShareFW - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectDLNA(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "resumeFlag"    # Z

    .prologue
    .line 1151
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectDLNA device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v0, "connectDLNAIntent":Landroid/content/Intent;
    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    const-string v2, "resume_request"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1156
    const/4 v1, 0x0

    .line 1157
    .local v1, "playerType":I
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 1158
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    .line 1160
    :cond_0
    :goto_0
    const-string v2, "player_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1162
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send Intent DLNA_CONNECTION_REQUEST : playerType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return-void

    .line 1158
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private connectScreenSharing(Landroid/hardware/display/WifiDisplay;)V
    .locals 7
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1033
    const-string v4, "WifiDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectScreenSharing : WifiDisplay Info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , devInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iput-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 1036
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1037
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1038
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    :cond_0
    move v0, v3

    .line 1039
    .local v0, "isSupportScreenSharing":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    move v1, v3

    .line 1041
    .local v1, "isVideoRunning":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v4, :cond_3

    .line 1042
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    .line 1045
    :cond_3
    if-eqz v0, :cond_7

    .line 1046
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    if-eqz v2, :cond_4

    .line 1047
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    .line 1049
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/16 v4, 0xb

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    invoke-virtual {v2, v4, v5, v6}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithMode(ILjava/lang/String;Z)V

    .line 1054
    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 1057
    if-eqz v0, :cond_8

    .line 1058
    const-string v2, "CNTP"

    const-string v3, "SCR_SHA"

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :goto_3
    const-string v2, "CONN"

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    return-void

    .end local v0    # "isSupportScreenSharing":Z
    .end local v1    # "isVideoRunning":Z
    :cond_5
    move v0, v2

    .line 1038
    goto :goto_0

    .restart local v0    # "isSupportScreenSharing":Z
    :cond_6
    move v1, v2

    .line 1039
    goto :goto_1

    .line 1051
    .restart local v1    # "isVideoRunning":Z
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_2

    .line 1060
    :cond_8
    const-string v2, "CNTP"

    const-string v3, "SCR_MIR"

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private connectScreenSharing(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V
    .locals 14
    .param p1, "device"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .prologue
    const/4 v4, 0x0

    const v13, 0x2208a

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1065
    const-string v0, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectScreenSharing : DlnaDevice Info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v8

    .line 1068
    .local v8, "isSupportScreenSharing":Z
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v9, v12

    .line 1070
    .local v9, "isVideoRunning":Z
    :goto_0
    if-eqz v8, :cond_1

    .line 1071
    invoke-static {}, Lcom/android/settings/wfd/WfdSettingsUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, "localAddress":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v2, "7236"

    const/16 v3, 0xa

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-eqz v7, :cond_4

    move v7, v11

    :goto_1
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/display/DisplayManager;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1073
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDLNA()Lcom/samsung/android/allshare/Device;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/allshare/ScreenSharingDevice;

    .line 1074
    .local v10, "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    invoke-direct {p0, v10}, Lcom/android/settings/wfd/WifiDisplaySettings;->sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V

    .line 1077
    .end local v1    # "localAddress":Ljava/lang/String;
    .end local v10    # "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v0, :cond_7

    if-nez v9, :cond_2

    if-nez v8, :cond_7

    .line 1078
    :cond_2
    if-eqz v8, :cond_5

    .line 1079
    const-string v0, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectScreenSharing SSDevice id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DMRDevice id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1081
    const-string v0, "WifiDisplaySettings"

    const-string v2, "connectScreenSharing don\'t find DMRDevice. Waiting to find DMRDevice."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iput-boolean v12, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    .line 1083
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    .line 1107
    :goto_2
    return-void

    .end local v9    # "isVideoRunning":Z
    :cond_3
    move v9, v11

    .line 1068
    goto :goto_0

    .restart local v1    # "localAddress":Ljava/lang/String;
    .restart local v9    # "isVideoRunning":Z
    :cond_4
    move v7, v9

    .line 1072
    goto :goto_1

    .line 1088
    .end local v1    # "localAddress":Ljava/lang/String;
    :cond_5
    iput-boolean v11, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    .line 1089
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v13, v0, v12, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;ZLjava/lang/String;)V

    .line 1090
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectDLNA(Ljava/lang/String;Z)V

    .line 1095
    :cond_6
    :goto_3
    iput-boolean v12, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 1096
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1097
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1099
    iput-boolean v12, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 1102
    if-eqz v8, :cond_8

    .line 1103
    const-string v0, "CNTP"

    const-string v2, "SCR_SHA"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :goto_4
    const-string v0, "CONN"

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1091
    :cond_7
    if-eqz v8, :cond_6

    .line 1092
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v13, v0, v11, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_3

    .line 1105
    :cond_8
    const-string v0, "CNTP"

    const-string v2, "DLNA"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private connectWifiDisplay(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectingDevice"    # Ljava/lang/String;

    .prologue
    .line 1025
    const-string v0, "WifiDisplaySettings"

    const-string v1, "connectWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1028
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 1030
    return-void
.end method

.method private connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectingDevice"    # Ljava/lang/String;

    .prologue
    .line 1118
    const-string v0, "WifiDisplaySettings"

    const-string v1, "connectWifiDisplayWithPin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1121
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 1123
    return-void
.end method

.method private createDLNAPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;
    .locals 2
    .param p1, "device"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .prologue
    .line 1176
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V

    return-object v0
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 18

    .prologue
    .line 2024
    const/16 v2, 0x17

    .line 2025
    .local v2, "MAX_NAME_LENGTH":I
    const/16 v3, 0x17

    .line 2027
    .local v3, "MIN_NAME_LENGTH":I
    const/4 v15, 0x1

    new-array v7, v15, [Landroid/text/InputFilter;

    .line 2028
    .local v7, "filters":[Landroid/text/InputFilter;
    const/4 v15, 0x0

    new-instance v16, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    aput-object v16, v7, v15

    .line 2049
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 2050
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x7f040234

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 2051
    .local v10, "layout":Landroid/view/View;
    const v15, 0x7f0d0531

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 2052
    .local v12, "mEditDeviceName":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    .line 2053
    const v15, 0x7f0d0532

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2054
    .local v5, "availableSpecialChars":Landroid/widget/TextView;
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2055
    const v15, 0x7f0d0533

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2056
    .local v14, "specialChars":Landroid/widget/TextView;
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2057
    const-string v15, "~`!@$%^&*()-_=+[];\\:\'\",<.>/?"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2059
    const/4 v15, 0x6

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2060
    const/16 v15, 0x4000

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 2061
    invoke-virtual {v12, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2063
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v15}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    .line 2065
    .local v4, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v4, :cond_0

    .line 2066
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    if-nez v15, :cond_1

    .line 2067
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2073
    :cond_0
    :goto_0
    new-instance v11, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)V

    .line 2085
    .local v11, "mDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 2086
    invoke-virtual {v12}, Landroid/widget/EditText;->selectAll()V

    .line 2087
    const-string v15, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/wfd/WifiDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    .line 2089
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f0e10e6

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0e0829

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wfd/WifiDisplaySettings$18;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v4, v8}, Lcom/android/settings/wfd/WifiDisplaySettings$18;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0e082a

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v12, v8}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 2115
    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2116
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$19;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$19;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2122
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 2123
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$20;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$20;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2129
    const/4 v15, -0x1

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    .line 2130
    .local v13, "mOkButton":Landroid/widget/Button;
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$21;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$21;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2165
    return-object v6

    .line 2069
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v11    # "mDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    .end local v13    # "mOkButton":Landroid/widget/Button;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1127
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 1128
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-nez v0, :cond_0

    .line 1129
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1131
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;
    .locals 7
    .param p1, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "paired"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1415
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 1416
    .local v2, "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    .line 1417
    .local v3, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 1418
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 1419
    .local v1, "activeDisplayState":I
    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1420
    packed-switch v1, :pswitch_data_0

    .line 1440
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1441
    const v4, 0x7f04025e

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setWidgetLayoutResource(I)V

    .line 1443
    :cond_1
    return-object v2

    .line 1422
    :pswitch_0
    const-string v4, "WifiDisplaySettings"

    const-string v5, "WifiDisplayStatus.DISPLAY_STATE_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1426
    :pswitch_1
    const-string v4, "WifiDisplaySettings"

    const-string v5, "WifiDisplayStatus.DISPLAY_STATE_CONNECTING"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-virtual {v2, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1432
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1433
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1434
    const v4, 0x7f0e0314

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    .line 1435
    invoke-virtual {v2, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private disconnectAllShareFW()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1313
    const-string v0, "WifiDisplaySettings"

    const-string v1, "disconnectAllShareFW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1317
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1318
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    .line 1321
    return-void
.end method

.method private disconnectDLNA(Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1166
    const-string v2, "WifiDisplaySettings"

    const-string v3, "disconnectDLNA device"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v0, "disconnectDLNAIntent":Landroid/content/Intent;
    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 1170
    .local v1, "keepAliveApplication":Z
    :goto_0
    const-string v2, "keep_alive"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1171
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1172
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send Intent DLNA_DISCONNECTION_REQUEST : uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return-void

    .line 1169
    .end local v1    # "keepAliveApplication":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private disconnectDevice()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1529
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getActiveDLNAState()I

    move-result v0

    .line 1530
    .local v0, "activeDLNAState":I
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1531
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1532
    const-string v1, "WifiDisplaySettings"

    const-string v2, "disconnect AP Mirroring device for changing device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1534
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->disableWifiDisplay()V

    .line 1541
    :goto_0
    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_1

    .line 1543
    :cond_0
    const-string v1, "WifiDisplaySettings"

    const-string v2, "disconnect DLNA device (paused or M4 pending case) for changing device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDLNA(Ljava/lang/String;)V

    .line 1552
    :cond_1
    :goto_1
    return-void

    .line 1536
    :cond_2
    const-string v1, "WifiDisplaySettings"

    const-string v2, "disconnect Wifidisplay for changing device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1538
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->disconnectForMirroringSwitching()V

    goto :goto_0

    .line 1546
    :cond_3
    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_1

    .line 1548
    :cond_4
    const-string v1, "WifiDisplaySettings"

    const-string v2, "disconnect DLNA device for changing device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1550
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDLNA(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 6
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1139
    if-eqz p1, :cond_1

    .line 1140
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    .line 1141
    .local v2, "displays":[Landroid/hardware/display/WifiDisplay;
    move-object v0, v2

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 1142
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1147
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return-object v1

    .line 1141
    .restart local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v2    # "displays":[Landroid/hardware/display/WifiDisplay;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1147
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getBssid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1180
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1181
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 1182
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, "bssid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1185
    .end local v0    # "bssid":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1183
    .restart local v0    # "bssid":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1185
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getFrequency()I
    .locals 2

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1190
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    .line 1193
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 2261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.screensharing.LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2262
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2263
    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2265
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2266
    return-void
.end method

.method private prepareConnection()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1518
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can connect to waitingDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1520
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/hardware/display/DisplayManager$WfdAppState;->SETUP:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 1521
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    .line 1522
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    .line 1523
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDLNAList()V

    .line 1524
    iput-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    .line 1525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 1526
    return-void
.end method

.method private requestPopup(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "cause"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "isStartingDLNA"    # Z
    .param p4, "uid_DLNA"    # Ljava/lang/String;

    .prologue
    .line 2233
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPopup cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2236
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2237
    packed-switch p1, :pswitch_data_0

    .line 2251
    :cond_0
    :goto_0
    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2252
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2257
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 2240
    .restart local v1    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string v2, "WifiDisplaySettings"

    const-string v3, "requestPopup << POPUP_CAUSE_CONNECTING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    const-string v2, "DeviceName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2242
    if-eqz p3, :cond_0

    .line 2243
    const-string v2, "isStartingDLNA"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2244
    const-string v2, "uid_DLNA"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2254
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2255
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent call exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2237
    :pswitch_data_0
    .packed-switch 0x2208a
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 602
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    :cond_0
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 607
    :cond_1
    return-void
.end method

.method private sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V
    .locals 6
    .param p1, "ssDevice"    # Lcom/samsung/android/allshare/ScreenSharingDevice;

    .prologue
    .line 1110
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getWlanMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1111
    .local v2, "wlanMacAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getP2pMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "p2pMacAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getBluetoothMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "btMacAddress":Ljava/lang/String;
    const-string v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendScreenSharingTriggerMsg :  wlanMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " p2pMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " btMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/16 v3, 0x1c44

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/samsung/android/allshare/ScreenSharingDevice;->connectScreenSharingM2TV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1115
    return-void
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    .line 2184
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2185
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2187
    .local v0, "ab":Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 2188
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 2190
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2191
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 2192
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2193
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2196
    :cond_0
    if-eqz p1, :cond_1

    .line 2197
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2201
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 2185
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMenuIcon()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 494
    .local v0, "isLandscape":Z
    :goto_0
    const-string v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMenuIcon():: isLandscape="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    if-nez v3, :cond_2

    .line 497
    const-string v2, "WifiDisplaySettings"

    const-string v3, "onConfigurationChanged:: menu item is not created yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isLandscape":Z
    :cond_1
    move v0, v2

    .line 493
    goto :goto_0

    .line 500
    .restart local v0    # "isLandscape":Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 501
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v1

    .line 503
    .local v1, "retcon":Z
    if-eqz v1, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 505
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private showDisconnectDialog()V
    .locals 3

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 597
    return-void
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2206
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$22;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$22;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2230
    :goto_0
    return-void

    .line 2217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$23;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$23;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04025d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1448
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0d01ca

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1449
    .local v3, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 1462
    .local v1, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 1469
    .local v2, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0317

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0319

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0318

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1476
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1477
    return-void
.end method

.method private switchChanged(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1493
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    if-ne p1, v2, :cond_0

    .line 1515
    :goto_0
    return-void

    .line 1496
    :cond_0
    if-eqz p1, :cond_1

    .line 1498
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 1499
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1500
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onCheckedChanged() : already WfdConnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1504
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 1505
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1510
    if-eqz p1, :cond_3

    .line 1511
    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 1514
    :cond_3
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    goto :goto_0
.end method

.method private toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1393
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleRoute route = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    const-string v0, "WifiDisplaySettings"

    const-string v1, "toggleRoute showDialogFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    .line 1402
    :goto_0
    return-void

    .line 1399
    :cond_0
    const-string v0, "WifiDisplaySettings"

    const-string v1, "toggleRoute route.select"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 612
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 614
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 248
    const v0, 0x7f0e0d84

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 244
    const/16 v0, 0x66

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 1489
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1490
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 324
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onActivityCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 328
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->registerForContextMenu(Landroid/view/View;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_certification_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 343
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v0, :cond_1

    .line 348
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Connected but mWifiDisplayOnSetting false, so change status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 368
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    .line 512
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 560
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 561
    const-string v0, "WifiDisplaySettings"

    const-string v1, "MENU_ID_PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 564
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 571
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 567
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 568
    const-string v0, "WifiDisplaySettings"

    const-string v1, "user press to rename!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 253
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "media_router"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRouter;

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "display"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "wifi"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 260
    new-instance v7, Lcom/android/settings/wfd/Wfd_Certification;

    iget-object v10, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {v7, v10, v11, p0}, Lcom/android/settings/wfd/Wfd_Certification;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    .line 262
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdBrokerRunning(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 263
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    :cond_0
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    .line 267
    .local v6, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v7

    const/4 v10, 0x2

    if-ne v7, v10, :cond_6

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 268
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 269
    iput-boolean v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 270
    :cond_1
    const v7, 0x7f0800e0

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 271
    invoke-virtual {p0, v8}, Lcom/android/settings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    .line 274
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 277
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 278
    const-string v7, "deviceAddress"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    .line 282
    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v7, :cond_2

    .line 283
    const-string v7, "WifiDisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate() : mInPickerDialog="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_2
    const-string v7, "more_actions_package_name"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "packageFrom":Ljava/lang/String;
    const-string v7, "more_actions_knox_state"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    .line 288
    const-string v7, "more_actions_screen_sharing_mode"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_8

    move v5, v8

    .line 290
    .local v5, "showDlnaList":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 291
    const-string v7, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate() : packageFrom "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eqz v5, :cond_3

    .line 293
    const-string v7, "com.samsung.android.video"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    .line 294
    const-string v7, "com.sec.android.gallery3d"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsGalleryRunning:Z

    .line 295
    const-string v7, "com.sec.android.app.music"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    .line 297
    :cond_3
    const-string v7, "SHA_PAN"

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 300
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectAllShareFW()V

    .line 302
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v9, "multiwindow_facade"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 304
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v7, :cond_5

    .line 305
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v1

    .line 306
    .local v1, "currentState":I
    const-string v7, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate currentState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz v1, :cond_5

    .line 309
    if-ne v1, v8, :cond_5

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 311
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 312
    .local v3, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v7, 0xf

    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 313
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 318
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "currentState":I
    .end local v3    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_5
    return-void

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "packageFrom":Ljava/lang/String;
    .end local v5    # "showDlnaList":Z
    :cond_6
    move v7, v9

    .line 267
    goto/16 :goto_0

    .line 280
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v7, "cause"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    goto/16 :goto_1

    .restart local v4    # "packageFrom":Ljava/lang/String;
    :cond_8
    move v5, v9

    .line 288
    goto/16 :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 517
    instance-of v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v4, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v5, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 520
    .local v3, "preference":Landroid/preference/Preference;
    const v4, 0x7f0e10e0

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 521
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    .line 523
    instance-of v4, v3, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 524
    check-cast v4, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 525
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 526
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnecting(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 527
    check-cast v3, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .end local v3    # "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 528
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    const-string v4, "WifiDisplaySettings"

    const-string v5, "user press to connect with pin!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const v4, 0x7f0e10e5

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 534
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 547
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_0
    :goto_0
    return-void

    .line 537
    .restart local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v3    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isDongleRenameAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 538
    check-cast v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 539
    .local v2, "pref":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    if-eqz v2, :cond_0

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 540
    const/4 v4, 0x2

    const v5, 0x7f0e10e6

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 542
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 357
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const v1, 0x7f040237

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, "sMainView":Landroid/view/View;
    const v1, 0x7f0d0538

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    .line 360
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    const v1, 0x7f0d0537

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    .line 362
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    return-object v0
.end method

.method public onDetach()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 412
    const-string v2, "WifiDisplaySettings"

    const-string v3, "onDetach"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 414
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 418
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 419
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 422
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 423
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 426
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    if-eqz v2, :cond_1

    .line 428
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    .line 464
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "currentState":I
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_2

    .line 437
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v0

    .line 440
    :cond_2
    const/4 v1, 0x0

    .line 442
    .local v1, "multiWindowState":Z
    if-eqz v0, :cond_3

    .line 443
    if-ne v0, v6, :cond_3

    .line 444
    const/4 v1, 0x1

    .line 448
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-ne v2, v6, :cond_4

    if-nez v1, :cond_4

    .line 449
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v3, Landroid/hardware/display/DisplayManager$WfdAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 452
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v2, :cond_5

    .line 453
    if-nez v1, :cond_5

    .line 454
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDetach multiWindowState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 459
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdBrokerRunning(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v6, :cond_6

    .line 460
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 463
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectAllShareFW()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 468
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :try_start_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 472
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 474
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->close()V

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 487
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$WfdAppState;->PAUSE:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 489
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExtendedDisplayListener:Landroid/hardware/display/ExtendedDisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;)V

    .line 490
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause IllegalArgumentException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 577
    instance-of v3, p2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 578
    check-cast v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 579
    .local v2, "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    invoke-virtual {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 580
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 581
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 582
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 583
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    .line 584
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    .line 591
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 586
    .restart local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v2    # "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 587
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Landroid/hardware/display/WifiDisplay;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 372
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 373
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 375
    const-string v2, "WifiDisplaySettings"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v3, Landroid/hardware/display/DisplayManager$WfdAppState;->RESUME:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 379
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v2, "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExtendedDisplayListener:Landroid/hardware/display/ExtendedDisplayListener;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;Landroid/os/Handler;)V

    .line 387
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    .line 389
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGlobalEditDeviceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showInputMethod()V

    .line 395
    :cond_0
    const/4 v0, 0x1

    .line 396
    .local v0, "enabledMDM":Z
    if-eqz v0, :cond_1

    .line 397
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 398
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 403
    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    .line 408
    :cond_2
    return-void
.end method

.method public startScanWifiDisplays()V
    .locals 4

    .prologue
    .line 1011
    const-string v0, "WifiDisplaySettings"

    const-string v1, "startScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x251c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1014
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 1015
    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 2

    .prologue
    .line 1018
    const-string v0, "WifiDisplaySettings"

    const-string v1, "stopScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->stopScanWifiDisplays()V

    .line 1022
    return-void
.end method

.method protected update(I)V
    .locals 8
    .param p1, "changes"    # I

    .prologue
    const/4 v5, 0x0

    .line 618
    const-string v6, "WifiDisplaySettings"

    const-string v7, "update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->checkExceptionalCase()I

    move-result v2

    .line 620
    .local v2, "retExceptionValue":I
    packed-switch v2, :pswitch_data_0

    .line 634
    :pswitch_0
    const/4 v1, 0x0

    .line 637
    .local v1, "invalidateOptions":Z
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_display_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 641
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-virtual {v5}, Lcom/android/settings/wfd/Wfd_Certification;->updateCertificationMode()V

    .line 643
    const/4 v1, 0x1

    .line 647
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    .line 675
    .end local v1    # "invalidateOptions":Z
    :goto_0
    return-void

    .line 622
    :pswitch_1
    const-string v6, "WifiDisplaySettings"

    const-string v7, "group play is running!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e10e8

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    goto :goto_0

    .line 627
    :pswitch_2
    const-string v6, "WifiDisplaySettings"

    const-string v7, "live broadcast is running!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e10e9

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    goto :goto_0

    .line 654
    .restart local v1    # "invalidateOptions":Z
    :cond_2
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_4

    .line 655
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    .line 656
    .local v4, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 657
    .local v0, "activeDisplayState":I
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v3

    .line 660
    .local v3, "scanState":I
    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    if-nez v5, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-nez v3, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v5, :cond_4

    .line 664
    const-string v5, "WifiDisplaySettings"

    const-string v6, "update scanWifiDisplays"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    .line 669
    .end local v0    # "activeDisplayState":I
    .end local v3    # "scanState":I
    .end local v4    # "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_4
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_5

    .line 670
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDLNAList()V

    .line 673
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState(Z)V

    goto :goto_0

    .line 620
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public updateDLNAList()V
    .locals 26

    .prologue
    .line 1197
    const-string v22, "WifiDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "updateDLNAList mIsVideoRunning:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", mIsMusicRunning:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", mIsGalleryRunning:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsGalleryRunning:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-object/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v22, v0

    if-eqz v22, :cond_15

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v22, v0

    sget-object v23, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1203
    .local v20, "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v22, v0

    sget-object v23, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1204
    .local v8, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const-string v22, "AVPLAYER_VIDEO"

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 1205
    .local v21, "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const-string v22, "AVPLAYER_AUDIO"

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1206
    .local v6, "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNADeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v22, v0

    sget-object v23, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1208
    .local v14, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/allshare/Device;

    .line 1209
    .local v9, "dlna":Lcom/samsung/android/allshare/Device;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1212
    .end local v9    # "dlna":Lcom/samsung/android/allshare/Device;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    move/from16 v22, v0

    if-nez v22, :cond_14

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    .line 1214
    .local v5, "activeDisplayState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v15

    .line 1215
    .local v15, "isDLNADeviceConnected":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsGalleryRunning:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    if-eqz v15, :cond_1

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v5, v0, :cond_1

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/display/DisplayManager;->getDLNAType()I

    move-result v10

    .line 1218
    .local v10, "dlnaType":I
    if-nez v10, :cond_6

    .line 1219
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    .line 1227
    .end local v10    # "dlnaType":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_8

    :cond_2
    const/16 v18, 0x1

    .line 1228
    .local v18, "isVideoRunning":Z
    :goto_2
    if-eqz v18, :cond_9

    .line 1229
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/allshare/Device;

    .line 1230
    .local v11, "dmr":Lcom/samsung/android/allshare/Device;
    const/16 v16, 0x1

    .line 1231
    .local v16, "isDmrDevice":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1232
    .local v19, "ss":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v11}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIpAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1233
    invoke-virtual {v11}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->setDeviceUid(Ljava/lang/String;)V

    .line 1234
    const/16 v16, 0x0

    .line 1238
    .end local v19    # "ss":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsVideoRunning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    if-eqz v16, :cond_3

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1220
    .end local v11    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "isDmrDevice":Z
    .end local v18    # "isVideoRunning":Z
    .restart local v10    # "dlnaType":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_7

    .line 1221
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsGalleryRunning:Z

    goto/16 :goto_1

    .line 1222
    :cond_7
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v10, v0, :cond_1

    .line 1223
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    goto/16 :goto_1

    .line 1227
    .end local v10    # "dlnaType":I
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 1243
    .restart local v18    # "isVideoRunning":Z
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsMusicRunning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1244
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/allshare/Device;

    .line 1245
    .restart local v11    # "dmr":Lcom/samsung/android/allshare/Device;
    const/16 v16, 0x1

    .line 1246
    .restart local v16    # "isDmrDevice":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1247
    .restart local v19    # "ss":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v11}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIpAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1248
    const/16 v16, 0x0

    .line 1252
    .end local v19    # "ss":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    :cond_c
    if-eqz v16, :cond_a

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1256
    .end local v11    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "isDmrDevice":Z
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsGalleryRunning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 1257
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/allshare/Device;

    .line 1258
    .restart local v11    # "dmr":Lcom/samsung/android/allshare/Device;
    const/16 v16, 0x1

    .line 1259
    .restart local v16    # "isDmrDevice":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1260
    .restart local v19    # "ss":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v11}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIpAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1261
    const/16 v16, 0x0

    .line 1265
    .end local v19    # "ss":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    :cond_10
    if-eqz v16, :cond_e

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1271
    .end local v11    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "isDmrDevice":Z
    :cond_11
    const-string v22, "WifiDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " device total count : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ssList("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") videoList ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") audioList ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") imageList ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_12
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1274
    .local v7, "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v17

    .line 1275
    .local v17, "isSupportScreenSharing":Z
    const-string v22, "WifiDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\t device Uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-string v22, "WifiDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\t device dmr Uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const-string v22, "WifiDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\t device name : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string v22, "WifiDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\t device ip : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIpAddress()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-string v22, "WifiDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\t device screensharing mac : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const-string v22, "WifiDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\t device isSupportScreenSharing : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 1284
    const-string v22, "WifiDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "updateDLNAList SSDevice id: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", DMRDevice id : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 1286
    const v22, 0x2208a

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;ZLjava/lang/String;)V

    .line 1287
    :cond_13
    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectDLNA(Ljava/lang/String;Z)V

    .line 1288
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingDevice:Ljava/lang/String;

    .line 1289
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsPendingSetup:Z

    goto/16 :goto_6

    .line 1293
    .end local v5    # "activeDisplayState":I
    .end local v7    # "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v15    # "isDLNADeviceConnected":Z
    .end local v17    # "isSupportScreenSharing":Z
    .end local v18    # "isVideoRunning":Z
    :cond_14
    const-string v22, "WifiDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " device total count : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDLNAList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ssList("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), knox mode is running."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    .end local v6    # "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v8    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v20    # "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v21    # "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    :cond_15
    return-void
.end method
