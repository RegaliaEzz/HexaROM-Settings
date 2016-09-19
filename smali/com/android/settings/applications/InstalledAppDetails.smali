.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Lcom/android/settings/applications/AppInfoBase;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;,
        Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;
    }
.end annotation


# static fields
.field private static mIsKNOX3rdpartyApp:Z


# instance fields
.field private getApplicationUninstallationEnabled:I

.field private isStopSystemAppAllowed:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryPreference:Landroid/preference/Preference;

.field private mChartData:Lcom/android/settings/net/ChartData;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPreference:Landroid/preference/Preference;

.field private mDisableAfterUninstall:Z

.field private mForceStopButton:Landroid/widget/Button;

.field private mHeader:Lcom/android/settings/applications/LayoutPreference;

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mIsEmerMode:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLaunchPreference:Landroid/preference/Preference;

.field private mMemoryPreference:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private final mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionReceiver:Landroid/content/BroadcastReceiver;

.field private mPermissionsPreference:Landroid/preference/Preference;

.field private mPremiumSmsPreference:Lcom/android/settings/DropDownPreference;

.field private mShowUninstalled:Z

.field private mSipper:Lcom/android/internal/os/BatterySipper;

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field protected mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field protected mStatsManager:Lcom/android/settings/applications/ProcStatsData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStoragePreference:Landroid/preference/Preference;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 170
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 184
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 210
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    .line 1275
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$7;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$7;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1294
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$8;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$8;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1301
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$9;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$9;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Lcom/android/settings/net/ChartData;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/InstalledAppDetails;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->updatePremiumSmsState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method private buildPremiumSmsDropDown()V
    .locals 4

    .prologue
    .line 549
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 550
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    .line 551
    .local v0, "premiumSmsPermission":I
    sget-object v1, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "premiumSms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    if-eqz v0, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPremiumSmsPreference:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f0e0eef

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 560
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPremiumSmsPreference:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f0e0ef0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 562
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPremiumSmsPreference:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f0e0ef1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 565
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPremiumSmsPreference:Lcom/android/settings/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 568
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPremiumSmsPreference:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    const-string v1, "premium_sms"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkContainerRestrictionOnButtons()V
    .locals 13

    .prologue
    .line 1404
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sec_container_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1405
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1406
    .local v9, "standarizedPackageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1407
    .local v6, "isPresent":Z
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v4

    .line 1410
    .local v4, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {v4, v10}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v1

    .line 1412
    .local v1, "containerMgr":Lcom/sec/enterprise/knox/EnterpriseContainerManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1413
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ContainerApplicationPolicy;->getPackages()[Ljava/lang/String;

    move-result-object v2

    .line 1415
    .local v2, "containerPkgs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1416
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v8, v0, v5

    .line 1417
    .local v8, "pkgName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_2

    .line 1418
    const/4 v6, 0x1

    .line 1432
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "containerMgr":Lcom/sec/enterprise/knox/EnterpriseContainerManager;
    .end local v2    # "containerPkgs":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 1433
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1436
    .end local v4    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v6    # "isPresent":Z
    .end local v9    # "standarizedPackageName":Ljava/lang/String;
    :cond_1
    return-void

    .line 1416
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "containerMgr":Lcom/sec/enterprise/knox/EnterpriseContainerManager;
    .restart local v2    # "containerPkgs":[Ljava/lang/String;
    .restart local v4    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v5    # "i$":I
    .restart local v6    # "isPresent":Z
    .restart local v7    # "len$":I
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v9    # "standarizedPackageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1424
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "containerPkgs":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-object v10, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string v11, "checkContainerRestrictionOnButtons: containerMgr is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1426
    .end local v1    # "containerMgr":Lcom/sec/enterprise/knox/EnterpriseContainerManager;
    :catch_0
    move-exception v3

    .line 1427
    .local v3, "e":Ljava/lang/SecurityException;
    sget-object v10, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecurityException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1428
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 1429
    .local v3, "e":Ljava/lang/IllegalStateException;
    sget-object v10, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IllegalStateException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 965
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 982
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButtonsForException()V

    .line 983
    return-void

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 971
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 973
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 975
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 977
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 978
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 945
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 946
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 947
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 948
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 949
    .local v1, "newEnt":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 950
    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 952
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 953
    return-void
.end method

.method private getDataSummary()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 859
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v1, v1, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v2

    .line 861
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 862
    const v1, 0x7f0e0f55

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 870
    .end local v2    # "totalBytes":J
    :goto_0
    return-object v1

    .line 864
    .restart local v2    # "totalBytes":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 865
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0e0ed2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v6, v6, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v6

    const v8, 0x10010

    invoke-static {v0, v6, v7, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 870
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "totalBytes":J
    :cond_1
    const v1, 0x7f0e0832

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "appRow"    # Lcom/android/settings/notification/NotificationBackend$AppRow;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1144
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v1, :cond_0

    .line 1145
    const v1, 0x7f0e0e4b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1176
    :goto_0
    return-object v1

    .line 1147
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v0, "notifSummary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->priority:Z

    if-eqz v1, :cond_1

    .line 1149
    const v1, 0x7f0e0e4c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->sensitive:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->show:Z

    if-eqz v1, :cond_2

    .line 1152
    const v1, 0x7f0e0e56

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->peekable:Z

    if-nez v1, :cond_3

    .line 1155
    const v1, 0x7f0e0e50

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->show:Z

    if-nez v1, :cond_4

    .line 1158
    const v1, 0x7f0e0e53

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->statusBar:Z

    if-nez v1, :cond_5

    .line 1161
    const v1, 0x7f0e16ef

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1176
    const v1, 0x7f0e0ed7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1165
    :pswitch_0
    const v1, 0x7f0e0eda

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1168
    :pswitch_1
    const v1, 0x7f0e0ed9

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1171
    :pswitch_2
    const v1, 0x7f0e0ed8

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1174
    :pswitch_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 1163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .prologue
    .line 1139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    .line 1140
    .local v0, "appRow":Lcom/android/settings/notification/NotificationBackend$AppRow;
    invoke-static {v0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 601
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string v1, "mSmsManager != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 609
    :goto_0
    return v0

    .line 606
    :catch_0
    move-exception v0

    .line 609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1124
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 1130
    :goto_0
    return-object v0

    .line 1127
    :cond_0
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0

    .line 1130
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v3, 0x7f0e15fc

    .line 222
    const/4 v0, 0x0

    .line 226
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisablingBtnUnblocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 247
    :goto_0
    return v0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 231
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 235
    const/4 v0, 0x1

    .line 237
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisablingBtnBlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    :cond_3
    const v1, 0x7f0e15fd

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 244
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleHeader()V
    .locals 3

    .prologue
    .line 623
    const-string v1, "header_view"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    .line 626
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0d02f8

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 627
    .local v0, "btnPanel":Landroid/view/View;
    const v1, 0x7f0d0115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 628
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v2, 0x7f0e0804

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 629
    const v1, 0x7f0d0114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 630
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 631
    return-void
.end method

.method private initUninstallButtons()V
    .locals 14

    .prologue
    .line 311
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_8

    const/4 v8, 0x1

    .line 312
    .local v8, "isBundled":Z
    :goto_0
    const/4 v5, 0x1

    .line 313
    .local v5, "enabled":Z
    if-eqz v8, :cond_9

    .line 314
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v11}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v5

    .line 326
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 327
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "disablAppList":Ljava/lang/String;
    sget-object v11, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "disablAppList : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "appString":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v9, :cond_0

    aget-object v0, v2, v7

    .line 331
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 332
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v11, v11, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v11, :cond_b

    .line 333
    const/4 v5, 0x0

    .line 342
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "appString":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "disablAppList":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :cond_0
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v12, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 343
    const/4 v5, 0x0

    .line 346
    :cond_1
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/applications/InstalledAppDetails;->isProfileOrDeviceOwner(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 347
    const/4 v5, 0x0

    .line 356
    :cond_2
    if-eqz v5, :cond_3

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v12, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 357
    if-eqz v8, :cond_c

    .line 358
    const/4 v5, 0x0

    .line 391
    :cond_3
    :goto_3
    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 392
    .local v10, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v13, "getApplicationUninstallationEnabled"

    invoke-static {v11, v12, v13, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    .line 393
    iget v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    iget v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 394
    const/4 v5, 0x0

    .line 399
    :cond_4
    iget-boolean v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    if-eqz v11, :cond_5

    .line 400
    const/4 v5, 0x0

    .line 404
    :cond_5
    iget-boolean v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v11, :cond_6

    .line 405
    const/4 v5, 0x0

    .line 408
    :cond_6
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v11, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 409
    if-eqz v5, :cond_7

    .line 411
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    :cond_7
    return-void

    .line 311
    .end local v5    # "enabled":Z
    .end local v8    # "isBundled":Z
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 316
    .restart local v5    # "enabled":Z
    .restart local v8    # "isBundled":Z
    :cond_9
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v12, 0x800000

    and-int/2addr v11, v12

    if-nez v11, :cond_a

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_a

    .line 320
    const/4 v5, 0x0

    .line 322
    :cond_a
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v12, 0x7f0e080a

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 330
    .restart local v0    # "app":Ljava/lang/String;
    .restart local v1    # "appString":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "disablAppList":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 360
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "appString":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "disablAppList":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v6, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v6}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .line 362
    .local v3, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v3, :cond_e

    .line 365
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_d

    const/4 v5, 0x1

    :goto_4
    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    goto :goto_4

    .line 369
    :cond_e
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    const/4 v5, 0x1

    :goto_5
    goto/16 :goto_3

    :cond_f
    const/4 v5, 0x0

    goto :goto_5
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDisablingBtnBlocked()Z
    .locals 7

    .prologue
    .line 280
    const/4 v3, 0x0

    .line 284
    .local v3, "isBlocked":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 285
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 286
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v4, "com.sec.android.app.blockdisabling"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Blocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    const/4 v3, 0x1

    .line 296
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v4, "com.evernote"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.samsung.android.app.pinboard"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.osp.app.signin"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    :cond_1
    const/4 v3, 0x1

    .line 302
    :cond_2
    return v3

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not found package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDisablingBtnUnblocked()Z
    .locals 7

    .prologue
    .line 251
    const/4 v3, 0x0

    .line 258
    .local v3, "isUnblocked":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 259
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 260
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v4, "com.sec.android.app.unblockdisabling"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unblocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    const/4 v3, 0x1

    .line 270
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v4, "com.samsung.android.app.watchmanager"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.sec.android.sidesync30"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.sec.android.sidesync.source"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    :cond_1
    const/4 v3, 0x1

    .line 276
    :cond_2
    return v3

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not found package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isProfileOrDeviceOwner(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 417
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 418
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 420
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 429
    :goto_0
    return v5

    .line 423
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 424
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 425
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 429
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0d00be

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 733
    .local v0, "appSnippet":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 734
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 736
    return-void

    .line 734
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "appSnippet"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "versionName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04023b

    const v3, 0x1020018

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1105
    const v3, 0x1020006

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1106
    .local v1, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1108
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1109
    .local v2, "labelView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    const v3, 0x7f0d054b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1113
    .local v0, "appVersion":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1114
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1115
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0835

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    :goto_0
    return-void

    .line 1119
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 739
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 741
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 742
    .local v0, "match":I
    if-ltz v0, :cond_0

    .line 743
    const/4 v1, 0x1

    .line 750
    .end local v0    # "match":I
    :goto_0
    return v1

    .line 745
    :catch_0
    move-exception v1

    .line 750
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 7
    .param p2, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    .line 1021
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1022
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v1, "uid"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1024
    const-string v1, "hideInfoButton"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1026
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1027
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1028
    return-void
.end method

.method private startManagePermissionsActivity()V
    .locals 4

    .prologue
    .line 1009
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    const-string v2, "hideInfoButton"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1013
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_0
    return-void

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "InstalledAppDetails"

    const-string v3, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 935
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 936
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 937
    const-string v2, "isKNOX3rdApp"

    sget-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 938
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 939
    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 940
    return-void
.end method

.method private updateBattery()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 845
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 847
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    .line 849
    .local v0, "dischargeAmount":I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 851
    .local v1, "percentOfMax":I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    const v3, 0x7f0e0f25

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 856
    .end local v0    # "dischargeAmount":I
    .end local v1    # "percentOfMax":I
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 854
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    const v3, 0x7f0e0f26

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 962
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 960
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateForceStopButtonsForException()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 987
    const-string v0, "com.wssyncmldm"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.ws.dm"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.fotaclient"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1005
    :cond_1
    :goto_0
    return-void

    .line 991
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.sec.sprextension"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.sec.sprextension.phoneinfo"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 994
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 995
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.itsoninc.android.itsonclient"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.itsoninc.android.itsonservice"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.itsoninc.android.uid"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 999
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1000
    :cond_6
    const-string v0, "com.samsung.android.bbc.bbcagent"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1001
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1002
    :cond_7
    const-string v0, "com.samsung.android.themecenter"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0
.end method

.method private updatePremiumSmsState(I)Z
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 580
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    .line 581
    .local v0, "premiumSmsState":I
    if-ne v0, p1, :cond_0

    .line 596
    :goto_0
    return v3

    .line 585
    :cond_0
    if-lt p1, v1, :cond_1

    const/4 v4, 0x3

    if-gt p1, v4, :cond_1

    .line 586
    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected premium SMS policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/android/settings/applications/InstalledAppDetails;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 592
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2

    .line 593
    .local v2, "updatedPremiumSmsState":I
    if-ne p1, v2, :cond_2

    .line 594
    .local v1, "success":Z
    :goto_2
    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 596
    goto :goto_0

    .line 589
    .end local v1    # "success":Z
    .end local v2    # "updatedPremiumSmsState":I
    :cond_1
    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown premium SMS policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local v2    # "updatedPremiumSmsState":I
    :cond_2
    move v1, v3

    .line 593
    goto :goto_2
.end method


# virtual methods
.method public checkAdminRestrictionOnButtons()V
    .locals 5

    .prologue
    .line 1388
    :try_start_0
    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1389
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1392
    .local v1, "sys":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1394
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1395
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    .end local v1    # "sys":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get package info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkKnox(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 1440
    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string v3, "checkKnox() start"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    .line 1443
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.knox.containeragent.password_verify_from_UninstallApp"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v1, "knoxverifyintent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1446
    const/high16 v2, 0x20000

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1447
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1448
    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string v3, "checkKnox(KNOX_VERIFY_UNINSTALL)"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    .end local v1    # "knoxverifyintent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1449
    .restart local v1    # "knoxverifyintent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1450
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    const v5, 0x7f0e15fc

    const v4, 0x7f0e082a

    const/4 v0, 0x0

    .line 875
    packed-switch p1, :pswitch_data_0

    .line 929
    :goto_0
    return-object v0

    .line 877
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0840

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$3;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 893
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0841

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$4;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 906
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e083d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e083c

    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$5;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 917
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e082e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e080a

    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$6;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$6;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 468
    const/16 v0, 0x14

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 507
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 508
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->handleHeader()V

    .line 513
    const-string v0, "notification_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    .line 514
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 516
    const-string v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    .line 517
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 518
    const-string v0, "permission_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    .line 519
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 521
    const-string v0, "premium_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPremiumSmsPreference:Lcom/android/settings/DropDownPreference;

    .line 522
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->buildPremiumSmsDropDown()V

    .line 524
    const-string v0, "data_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    .line 525
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 528
    :cond_1
    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    .line 529
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 530
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 531
    const-string v0, "memory"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    .line 532
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 534
    const-string v0, "preferred_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    .line 535
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 537
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_3

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 686
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/applications/AppInfoBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 687
    if-nez p1, :cond_2

    .line 688
    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v3, :cond_0

    .line 689
    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 691
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2200

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 694
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 695
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 696
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.settings"

    const-string v5, "ALDS"

    invoke-static {v3, v4, v5, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v3, v5}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v3

    if-nez v3, :cond_1

    .line 705
    invoke-virtual {p0, v7, v7}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 728
    :cond_1
    :goto_1
    return-void

    .line 707
    :cond_2
    const/16 v4, 0xd

    if-ne p1, v4, :cond_1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 708
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 710
    .local v1, "packageName":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v4, :cond_3

    .line 711
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 713
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 714
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_4

    .line 715
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 717
    :cond_4
    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v5, v7, [Ljava/lang/Object;

    check-cast v3, Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 721
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-nez v3, :cond_6

    .line 722
    invoke-direct {p0, v1, v7, v6}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 724
    :cond_6
    invoke-direct {p0, v1, v6, v6}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 701
    .end local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1035
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_1

    .line 1036
    invoke-virtual {p0, v3, v3}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1040
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_7

    .line 1041
    const-string v1, "sec_container_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1042
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->checkKnox(I)V

    goto :goto_0

    .line 1044
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 1045
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1046
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_3

    .line 1047
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1049
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1052
    :cond_4
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1056
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_6

    .line 1057
    invoke-direct {p0, v0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1059
    :cond_6
    invoke-direct {p0, v0, v4, v4}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1062
    :cond_7
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 1063
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 435
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 437
    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 438
    const v3, 0x7f08005f

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->addPreferencesFromResource(I)V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isStopSystemAppAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    .line 444
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    .line 448
    .local v2, "statsService":Landroid/net/INetworkStatsService;
    :try_start_0
    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v2    # "statsService":Landroid/net/INetworkStatsService;
    :goto_0
    new-instance v3, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 462
    const-string v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 463
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 464
    return-void

    .line 449
    .end local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "statsService":Landroid/net/INetworkStatsService;
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 453
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "statsService":Landroid/net/INetworkStatsService;
    :cond_1
    const-string v3, "data_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 635
    const/4 v0, 0x2

    const v1, 0x7f0e0810

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 637
    const v0, 0x7f0e080b

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 639
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    .line 503
    :cond_0
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onDestroy()V

    .line 504
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 673
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 681
    :goto_0
    return v0

    .line 675
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 678
    :pswitch_1
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 492
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onPause()V

    .line 493
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1070
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 1071
    const-class v1, Lcom/android/settings/applications/AppStorageSettings;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 1097
    :goto_0
    return v6

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 1073
    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    const v3, 0x7f0e0e2c

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1075
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 1076
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->startManagePermissionsActivity()V

    goto :goto_0

    .line 1077
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_3

    .line 1078
    const-class v1, Lcom/android/settings/applications/AppLaunchSettings;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1079
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_4

    .line 1080
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-static {v1, v3, v4}, Lcom/android/settings/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    goto :goto_0

    .line 1082
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 1083
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1084
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "showAppImmediatePkg"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1088
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    const v4, 0x7f0e0ed1

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1090
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_6

    .line 1091
    new-instance v7, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    invoke-direct {v7, v1, v4, v5, v8}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 1092
    .local v7, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {v1, v4, v3, v7, v6}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Z)V

    goto/16 :goto_0

    .end local v7    # "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    :cond_6
    move v6, v3

    .line 1095
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 643
    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v2, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    const/4 v1, 0x1

    .line 647
    .local v1, "showIt":Z
    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_4

    .line 648
    const/4 v1, 0x0

    .line 660
    :cond_2
    :goto_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 661
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_a

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 662
    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-nez v2, :cond_b

    move v0, v3

    .line 663
    .local v0, "isUninstallUpdatesVisibled":Z
    :goto_3
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 664
    if-eqz v0, :cond_0

    const-string v2, "com.skt.prod.phone"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.skt.prod.dialer"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    :cond_3
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 649
    .end local v0    # "isUninstallUpdatesVisibled":Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_5

    .line 650
    const/4 v1, 0x0

    goto :goto_1

    .line 651
    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 652
    const/4 v1, 0x0

    goto :goto_1

    .line 653
    :cond_6
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 654
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 655
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_9

    .line 656
    const/4 v1, 0x0

    goto :goto_1

    .line 657
    :cond_9
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_2

    .line 658
    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    move v2, v4

    .line 661
    goto :goto_2

    :cond_b
    move v0, v4

    .line 662
    goto :goto_3
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 473
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onResume()V

    .line 474
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 478
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 479
    .local v0, "app":Lcom/android/settings/DataUsageSummary$AppItem;
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary$AppItem;->addUid(I)V

    .line 480
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 485
    :cond_1
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

    invoke-direct {v1, p0, v6}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$1;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 486
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

    invoke-direct {v1, p0, v6}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$1;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected refreshUi()Z
    .locals 15

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 756
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v9, :cond_0

    .line 757
    const/4 v9, 0x0

    .line 841
    :goto_0
    return v9

    .line 760
    :cond_0
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v9, :cond_1

    .line 761
    const/4 v9, 0x0

    goto :goto_0

    .line 763
    :cond_1
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 766
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v4, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 768
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 769
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 770
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 771
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 772
    .local v0, "activityPkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 776
    .local v7, "metadata":Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 777
    const-string v9, "android.app.home.alternate"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 778
    .local v6, "metaPkg":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/android/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 779
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 769
    .end local v6    # "metaPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 784
    .end local v0    # "activityPkg":Ljava/lang/String;
    .end local v7    # "metadata":Landroid/os/Bundle;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 785
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v9}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 786
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 789
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 791
    .local v2, "context":Landroid/app/Activity;
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v9, :cond_4

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 794
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v9, v10, v11}, Lcom/android/settings/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    .line 796
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v12, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v13, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v14, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/settings/Utils;->getOtherDefaultsSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/hardware/usb/IUsbManager;Landroid/appwidget/AppWidgetManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-static {v10, v2, v11}, Lcom/android/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-eqz v9, :cond_5

    .line 801
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 804
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateBattery()V

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkAdminRestrictionOnButtons()V

    .line 807
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkContainerRestrictionOnButtons()V

    .line 809
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v10, v2}, Lcom/android/settings/applications/AppStorageSettings;->getSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 810
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v10, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    const-wide/16 v12, 0x1f4

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 819
    iget-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v9, :cond_8

    .line 821
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 822
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 841
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 822
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 827
    :cond_8
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2200

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 830
    .local v1, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v9, :cond_6

    .line 834
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 836
    .end local v1    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 837
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    goto/16 :goto_0
.end method
