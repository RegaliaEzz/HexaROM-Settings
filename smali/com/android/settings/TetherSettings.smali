.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field mAlertDlg:Landroid/app/AlertDialog;

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mDefaultSsidPwd:Ljava/lang/String;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mIsRaceCondition:Z

.field private mMassStorageActive:Z

.field private mNcmEnabled:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetheredData:I

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mWifiApSettings:Landroid/preference/PreferenceScreen;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/TetherSettings;->DBG:Z

    .line 1547
    new-instance v0, Lcom/android/settings/TetherSettings$16;

    invoke-direct {v0}, Lcom/android/settings/TetherSettings$16;-><init>()V

    sput-object v0, Lcom/android/settings/TetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 158
    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    .line 186
    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    .line 188
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    .line 348
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 657
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->goToTetheringHelp()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/settings/TetherSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/TetherSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/TetherSettings;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    return p1
.end method

.method static execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "Parameter"    # Ljava/lang/String;

    .prologue
    .line 585
    const/4 v2, 0x0

    .line 586
    .local v2, "ifc":Ljava/lang/Process;
    const-string v3, ""

    .line 588
    .local v3, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 589
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 590
    .local v0, "bis":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 591
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 592
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 593
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .end local v0    # "bis":Ljava/io/BufferedReader;
    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    :cond_0
    const-string v4, "TetherSettings"

    const-string v5, "ifc is null or ifc.waitFor is failed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 604
    :cond_1
    :goto_1
    return-object v3

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 600
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 1386
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 1387
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 1388
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1393
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 1387
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1386
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 1393
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private goToTetheringHelp()V
    .locals 7

    .prologue
    .line 621
    const/4 v2, 0x0

    .line 624
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 625
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 655
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 627
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 628
    if-eqz v2, :cond_2

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 629
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v3, "pickIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v4

    if-nez v4, :cond_1

    .line 631
    const-string v4, "helphub:section"

    const-string v5, "tethering_tmo"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "TetherSettings"

    const-string v5, "Exception!! help NameNotFoundException"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v3    # "pickIntent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v4, "helphub:section"

    const-string v5, "tethering_mtr"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 636
    .end local v3    # "pickIntent":Landroid/content/Intent;
    :cond_2
    if-eqz v2, :cond_3

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 637
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .restart local v3    # "pickIntent":Landroid/content/Intent;
    const-string v4, "helphub:appid"

    const-string v5, "tethering"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 644
    .end local v3    # "pickIntent":Landroid/content/Intent;
    :cond_3
    const-string v4, "TetherSettings"

    const-string v5, "help == null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private initWifiTethering()V
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 337
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 338
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 341
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->generateDefaultSSID()V

    .line 346
    :cond_0
    return-void
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1239
    .local v2, "provisionApp":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1240
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v0, "intent":Landroid/content/Intent;
    aget-object v5, v2, v4

    aget-object v6, v2, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    const/high16 v5, 0x10000

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static isMetroPCS()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 608
    const-string v2, "getprop ro.build.product"

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "device":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return v1

    .line 612
    :cond_1
    const-string v2, "MetroPCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mtr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    :cond_2
    const-string v1, "TetherSettings"

    const-string v2, "Detected MetroPCS device"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1232
    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1352
    const-string v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1355
    .local v2, "um":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1356
    if-eqz p1, :cond_0

    .line 1357
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1358
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 1362
    :cond_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1364
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v5

    if-eqz v5, :cond_2

    .line 1365
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v5, 0x7f0e0758

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1366
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1383
    :cond_1
    :goto_0
    return-void

    .line 1369
    :cond_2
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1370
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_tethering_enabled"

    if-ne p1, v4, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1371
    if-nez p1, :cond_4

    .line 1372
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "enable_mtp_settings"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1374
    :cond_4
    const-string v3, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1375
    :cond_5
    move v1, p1

    .line 1376
    .local v1, "mEnable":Z
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/TetherSettings$15;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/TetherSettings$15;-><init>(Lcom/android/settings/TetherSettings;Z)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showMetorPCSHelpPoup()Landroid/app/AlertDialog;
    .locals 25

    .prologue
    .line 494
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 498
    .local v15, "locale":Ljava/util/Locale;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 499
    .local v3, "am":Landroid/content/res/AssetManager;
    const-string v22, "html/%y%z/tethering_help.html"

    const-string v23, "%y"

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 500
    .local v18, "path":Ljava/lang/String;
    const-string v22, "%z"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x5f

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 501
    const/16 v21, 0x1

    .line 502
    .local v21, "useCountry":Z
    const/4 v14, 0x0

    .line 504
    .local v14, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 508
    if-eqz v14, :cond_0

    .line 510
    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 515
    :cond_0
    :goto_0
    const-string v22, "html/%y%z/tethering_%xhelp.html"

    const-string v23, "%y"

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 516
    .local v20, "url":Ljava/lang/String;
    const-string v23, "%z"

    if-eqz v21, :cond_3

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x5f

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 518
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 519
    const-string v22, "%x"

    const-string v23, "usb_mtr_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 534
    :goto_2
    const-string v22, "TetherSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Tethering Help url : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v13, 0x0

    .line 538
    .local v13, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 539
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 540
    .local v17, "out":Ljava/lang/StringBuffer;
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v4, v0, [B

    .line 541
    .local v4, "b":[B
    :goto_3
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .local v16, "n":I
    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 542
    new-instance v22, Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 545
    .end local v4    # "b":[B
    .end local v16    # "n":I
    .end local v17    # "out":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v8

    .line 547
    .local v8, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 548
    const/16 v22, 0x0

    .line 550
    if-eqz v13, :cond_1

    .line 552
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 567
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    return-object v22

    .line 505
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "url":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 506
    .local v11, "ignored":Ljava/lang/Exception;
    const/16 v21, 0x0

    .line 508
    if-eqz v14, :cond_0

    .line 510
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 511
    :catch_2
    move-exception v22

    goto/16 :goto_0

    .line 508
    .end local v11    # "ignored":Ljava/lang/Exception;
    :catchall_0
    move-exception v22

    if-eqz v14, :cond_2

    .line 510
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 512
    :cond_2
    :goto_5
    throw v22

    .line 516
    .restart local v20    # "url":Ljava/lang/String;
    :cond_3
    const-string v22, ""

    goto/16 :goto_1

    .line 521
    :cond_4
    const-string v22, "%x"

    const-string v23, "usb_tmo_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 523
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 524
    const-string v22, "%x"

    const-string v23, "wifi_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 525
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 526
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 527
    const-string v22, "%x"

    const-string v23, "usb_wifi_mtr_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 529
    :cond_7
    const-string v22, "%x"

    const-string v23, "usb_wifi_tmo_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 532
    :cond_8
    const-string v22, "%x"

    const-string v23, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 544
    .restart local v4    # "b":[B
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "n":I
    .restart local v17    # "out":Ljava/lang/StringBuffer;
    :cond_9
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v10

    .line 550
    .local v10, "html":Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 552
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 558
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string v23, "layout_inflater"

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 559
    .local v12, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 560
    .local v19, "sharedPreferences":Landroid/content/SharedPreferences;
    const v22, 0x7f0400b5

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 561
    .local v6, "customView":Landroid/view/View;
    const v22, 0x7f0d01f3

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 562
    .local v7, "dnsCheckBox":Landroid/widget/CheckBox;
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 563
    .local v9, "edit":Landroid/content/SharedPreferences$Editor;
    const v22, 0x7f0d00e3

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 564
    .local v5, "body":Landroid/widget/TextView;
    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 567
    new-instance v22, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0e0d66

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x104000a

    new-instance v24, Lcom/android/settings/TetherSettings$11;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v7}, Lcom/android/settings/TetherSettings$11;-><init>(Lcom/android/settings/TetherSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_4

    .line 550
    .end local v4    # "b":[B
    .end local v5    # "body":Landroid/widget/TextView;
    .end local v6    # "customView":Landroid/view/View;
    .end local v7    # "dnsCheckBox":Landroid/widget/CheckBox;
    .end local v9    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "html":Ljava/lang/String;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "n":I
    .end local v17    # "out":Ljava/lang/StringBuffer;
    .end local v19    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catchall_1
    move-exception v22

    if-eqz v13, :cond_b

    .line 552
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 554
    :cond_b
    :goto_7
    throw v22

    .line 511
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "url":Ljava/lang/String;
    :catch_3
    move-exception v22

    goto/16 :goto_0

    :catch_4
    move-exception v23

    goto/16 :goto_5

    .line 553
    .restart local v4    # "b":[B
    .restart local v10    # "html":Ljava/lang/String;
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "n":I
    .restart local v17    # "out":Ljava/lang/StringBuffer;
    .restart local v20    # "url":Ljava/lang/String;
    :catch_5
    move-exception v22

    goto/16 :goto_6

    .end local v4    # "b":[B
    .end local v10    # "html":Ljava/lang/String;
    .end local v16    # "n":I
    .end local v17    # "out":Ljava/lang/StringBuffer;
    .restart local v8    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v23

    goto/16 :goto_4

    .end local v8    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v23

    goto :goto_7
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 1248
    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 1249
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1253
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1258
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1255
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    .line 1256
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1305
    iget v4, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v4, :pswitch_data_0

    .line 1348
    :goto_0
    :pswitch_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 1349
    :goto_1
    return-void

    .line 1315
    :pswitch_1
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1316
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1318
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1319
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1320
    const-string v4, "TetherSettings"

    const-string v5, "wifi is connected, so tethering blocked"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0062

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1328
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1329
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1330
    iput-boolean v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 1331
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1332
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v5, 0x7f0e013e

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1333
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1335
    :cond_1
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 1336
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1337
    :cond_2
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v5, 0x7f0e075d

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1338
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const-string v5, "bluetooth.pan.tether_on"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 1342
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 1305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 23
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 1026
    const/4 v6, 0x0

    .line 1027
    .local v6, "bluetoothErrored":Z
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_2

    aget-object v17, v4, v12

    .line 1028
    .local v17, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v15, v5

    .local v15, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_1
    if-ge v11, v15, :cond_1

    aget-object v16, v5, v11

    .line 1029
    .local v16, "regex":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/4 v6, 0x1

    .line 1028
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1027
    .end local v16    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_0

    .line 1033
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v15    # "len$":I
    .end local v17    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 1034
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_4

    .line 1091
    :cond_3
    :goto_2
    return-void

    .line 1036
    :cond_4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 1037
    .local v9, "btState":I
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v9, v0, :cond_5

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0e013f

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 1040
    :cond_5
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v9, v0, :cond_6

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0e013e

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 1044
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 1045
    .local v7, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v9, v0, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const-string v20, "bluetooth.pan.tether_on"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1049
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v8

    .line 1050
    .local v8, "bluetoothTethered":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_7

    .line 1051
    const v19, 0x7f0e075f

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1054
    .local v18, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1066
    .end local v18    # "summary":Ljava/lang/String;
    :goto_3
    const-string v19, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1067
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 1069
    .local v10, "cm":Landroid/net/ConnectivityManager;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 1070
    .local v13, "info":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1071
    const-string v19, "TetherSettings"

    const-string v20, "wifi is connected, so tethering blocked"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto/16 :goto_2

    .line 1055
    .end local v10    # "cm":Landroid/net/ConnectivityManager;
    .end local v13    # "info":Landroid/net/NetworkInfo;
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_8

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0e075e

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 1058
    :cond_8
    if-eqz v6, :cond_9

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0e0761

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 1061
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0e075d

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 1077
    .end local v8    # "bluetoothTethered":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const-string v20, "bluetooth.pan.tether_on"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0e0760

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 6

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 876
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 879
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 881
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 886
    .end local v0    # "available":[Ljava/lang/String;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "errored":[Ljava/lang/String;
    .end local v3    # "tethered":[Ljava/lang/String;
    :goto_0
    return-void

    .line 884
    :cond_0
    const-string v4, "TetherSettings"

    const-string v5, "getActivity() is null, updateState() is skipped."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 890
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    .line 891
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_0

    .line 892
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0e0e95

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 899
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 901
    .local v0, "isAirplaneMode":Z
    :goto_1
    const/4 v3, 0x1

    .line 902
    .local v3, "wifiHotspotAvailable":Z
    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    .line 903
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1

    .line 904
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 912
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isUsbTetheringEnabled"

    invoke-static {v4, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 913
    .local v2, "isUsbTetheringEnabled":I
    if-nez v2, :cond_5

    .line 914
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 915
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 920
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isBluetoothTetheringEnabled"

    invoke-static {v4, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 921
    .local v1, "isBluetoothTetheringEnabled":I
    if-nez v1, :cond_6

    .line 922
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 923
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 927
    :goto_4
    return-void

    .line 895
    .end local v0    # "isAirplaneMode":Z
    .end local v1    # "isBluetoothTetheringEnabled":I
    .end local v2    # "isUsbTetheringEnabled":I
    .end local v3    # "wifiHotspotAvailable":Z
    :cond_2
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_0

    .line 896
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0e0e96

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v5

    .line 899
    goto :goto_1

    .line 907
    .restart local v0    # "isAirplaneMode":Z
    .restart local v3    # "wifiHotspotAvailable":Z
    :cond_4
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_1

    .line 908
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    .line 917
    .restart local v2    # "isUsbTetheringEnabled":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 925
    .restart local v1    # "isBluetoothTetheringEnabled":I
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 932
    const-string v15, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 934
    .local v3, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v15, :cond_1

    const/4 v11, 0x1

    .line 935
    .local v11, "usbAvailable":Z
    :goto_0
    const/4 v12, 0x0

    .line 936
    .local v12, "usbError":I
    move-object/from16 v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v9, v1, v5

    .line 937
    .local v9, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v8, v2, v4

    .line 938
    .local v8, "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 939
    if-nez v12, :cond_0

    .line 940
    invoke-virtual {v3, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v12

    .line 937
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 934
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "regex":Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    .end local v11    # "usbAvailable":Z
    .end local v12    # "usbError":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 936
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v11    # "usbAvailable":Z
    .restart local v12    # "usbError":I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 945
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    .line 946
    .local v14, "usbTethered":Z
    move-object/from16 v1, p2

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_9

    aget-object v9, v1, v5

    .line 947
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v7, :cond_8

    aget-object v8, v2, v4

    .line 948
    .restart local v8    # "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "usb"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    :cond_4
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "rndis"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 949
    :cond_5
    const/4 v14, 0x1

    .line 947
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 950
    :cond_7
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "ncm"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 951
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 952
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 953
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    .line 954
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0e0759

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_5

    .line 946
    .end local v8    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_3

    .line 958
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_9
    const/4 v13, 0x0

    .line 959
    .local v13, "usbErrored":Z
    move-object/from16 v1, p3

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .restart local v5    # "i$":I
    :goto_6
    if-ge v5, v6, :cond_c

    aget-object v9, v1, v5

    .line 960
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_7
    if-ge v4, v7, :cond_b

    aget-object v8, v2, v4

    .line 961
    .restart local v8    # "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v13, 0x1

    .line 960
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 959
    .end local v8    # "regex":Ljava/lang/String;
    :cond_b
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_6

    .line 967
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_c
    const-string v15, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 968
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_11

    .line 969
    const-string v15, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 970
    :cond_d
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 971
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0e0754

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 972
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 973
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1015
    :cond_e
    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1016
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v15}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_17

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 1022
    :cond_f
    :goto_9
    return-void

    .line 976
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0e0754

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 977
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 978
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 980
    :cond_11
    if-eqz v11, :cond_14

    .line 981
    if-nez v12, :cond_13

    .line 982
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    if-nez v15, :cond_12

    .line 983
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0e0753

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 987
    :cond_12
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    if-nez v15, :cond_e

    .line 988
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 989
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 985
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0e0758

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_a

    .line 991
    :cond_14
    if-eqz v13, :cond_15

    .line 992
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0e0758

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 994
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 995
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v15, :cond_16

    .line 996
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0e0755

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 997
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 998
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1000
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v16, 0x7f0e0756

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1019
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_9
.end method


# virtual methods
.method public generateDefaultSSID()V
    .locals 20

    .prologue
    .line 1417
    const/4 v10, 0x0

    .line 1418
    .local v10, "number":Ljava/lang/String;
    const-string v16, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 1420
    .local v14, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_0

    .line 1421
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    .line 1424
    :cond_0
    if-nez v10, :cond_1

    .line 1425
    const-string v10, ""

    .line 1428
    :cond_1
    const-string v15, ""

    .line 1429
    .local v15, "tempSSID":Ljava/lang/String;
    const-string v4, ""

    .line 1430
    .local v4, "defaultSsid":Ljava/lang/String;
    const-string v3, ""

    .line 1432
    .local v3, "defaultNumber":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1433
    const v16, 0x7f0e0596

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1439
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 1440
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x4

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 1441
    .local v6, "last4digitNum":Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1442
    move-object v3, v6

    .line 1450
    .end local v6    # "last4digitNum":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1451
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1456
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1458
    .local v11, "randomUUID":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1476
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    .line 1485
    .end local v11    # "randomUUID":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1486
    return-void

    .line 1435
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1436
    .local v9, "mSplitSsid":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v15, v9, v16

    goto/16 :goto_0

    .line 1444
    .end local v9    # "mSplitSsid":[Ljava/lang/String;
    :cond_5
    new-instance v12, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v12, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1445
    .local v12, "rnd":Ljava/util/Random;
    const/16 v16, 0x2327

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v13, v0, 0x3e8

    .line 1446
    .local v13, "sequence":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1447
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1461
    .end local v12    # "rnd":Ljava/util/Random;
    .end local v13    # "sequence":I
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v11    # "randomUUID":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1462
    .local v8, "mSplitPwd":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 1465
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1466
    .local v7, "mPwd":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_4
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    .line 1467
    const-string v16, "LAST4DIGIT"

    aget-object v17, v8, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1468
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1466
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1470
    :cond_8
    aget-object v16, v8, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1479
    .end local v5    # "i":I
    .end local v7    # "mPwd":Ljava/lang/StringBuilder;
    .end local v8    # "mSplitPwd":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 1482
    .end local v11    # "randomUUID":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3
.end method

.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1490
    const v0, 0x7f0e0d7e

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x5a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1261
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1262
    const-string v1, "WifiAP_TetherSettings"

    const-string v2, "TetherSettings onActivityResult"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    if-nez p1, :cond_1

    .line 1264
    if-ne p2, v4, :cond_2

    .line 1265
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    if-ne v1, v4, :cond_0

    .line 1266
    iput v3, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 1267
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-static {v1, v2}, Lcom/android/settings/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    .line 1268
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    .line 1301
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    .line 1302
    return-void

    .line 1272
    :cond_2
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    .line 1287
    const/4 v0, 0x0

    .line 1289
    .local v0, "wifiSavedState":I
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1293
    :goto_1
    if-ne v0, v5, :cond_3

    .line 1294
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1295
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1298
    .end local v0    # "wifiSavedState":I
    :cond_3
    :goto_2
    iput v4, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 1274
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const-string v2, "bluetooth.pan.tether_on"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 1277
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 1290
    .restart local v0    # "wifiSavedState":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 1397
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1399
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1407
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1411
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    .line 1414
    :cond_0
    return-void

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    .line 206
    if-eqz p1, :cond_0

    .line 207
    const-string v18, "TETHER_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 209
    :cond_0
    const v18, 0x7f0800c2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 210
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->setHasOptionsMenu(Z)V

    .line 212
    const-string v18, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    const-string v19, "no_config_tethering"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-eqz v18, :cond_3

    .line 216
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 217
    new-instance v18, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/settings/Settings$TetherSettingsActivity;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 219
    const-string v18, "TetherSettings"

    const-string v19, "onCreate: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0e08c7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->finish()V

    .line 327
    :cond_2
    :goto_0
    return-void

    .line 226
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 227
    .local v3, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 228
    .local v4, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v4, :cond_5

    .line 229
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    .line 230
    .local v7, "btState":I
    const/16 v18, 0xc

    move/from16 v0, v18

    if-ne v7, v0, :cond_5

    .line 231
    sget-boolean v18, Lcom/android/settings/TetherSettings;->DBG:Z

    if-eqz v18, :cond_4

    .line 232
    const-string v18, "TetherSettings"

    const-string v19, "onCreate:Bluetooth is on, call getProfileProxy"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_4
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 238
    .end local v7    # "btState":I
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 239
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 240
    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const v19, 0x7f0e074e

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setTitle(I)V

    .line 245
    :cond_6
    :goto_1
    const-string v18, "wifi_ap_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 249
    :cond_7
    const-string v18, "usb_tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    .line 250
    const-string v18, "enable_bluetooth_tethering"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 255
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 257
    .local v8, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 258
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 259
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/16 v16, 0x1

    .line 262
    .local v16, "wifiAvailable":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const/4 v15, 0x1

    .line 263
    .local v15, "usbAvailable":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const/4 v6, 0x1

    .line 265
    .local v6, "bluetoothAvailable":Z
    :goto_4
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mWifiRegexs.length : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mUsbRegexs.length : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mBluetoothRegexs.length : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_5
    if-ge v9, v12, :cond_c

    aget-object v14, v5, v9

    .line 270
    .local v14, "temp":Ljava/lang/String;
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "debug : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 242
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "bluetoothAvailable":Z
    .end local v8    # "cm":Landroid/net/ConnectivityManager;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "temp":Ljava/lang/String;
    .end local v15    # "usbAvailable":Z
    .end local v16    # "wifiAvailable":Z
    :cond_8
    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const v19, 0x7f0e074f

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 261
    .restart local v8    # "cm":Landroid/net/ConnectivityManager;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 262
    .restart local v16    # "wifiAvailable":Z
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 263
    .restart local v15    # "usbAvailable":Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 276
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v6    # "bluetoothAvailable":Z
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    :cond_c
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ">>> wifiAvailable : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 279
    const-string v18, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 280
    .local v17, "wm":Landroid/net/wifi/WifiManager;
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 281
    .local v13, "msg":Landroid/os/Message;
    const/16 v18, 0x15

    move/from16 v0, v18

    iput v0, v13, Landroid/os/Message;->what:I

    .line 282
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TetherSettings;->mTetheredData:I

    .line 283
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mTetheredData : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 286
    const/4 v15, 0x0

    .line 287
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    .line 288
    const/4 v6, 0x0

    .line 291
    .end local v13    # "msg":Landroid/os/Message;
    .end local v17    # "wm":Landroid/net/wifi/WifiManager;
    :cond_e
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ">>> usbAvailable : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ">>> bluetoothAvailable : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-eqz v16, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v18

    if-nez v18, :cond_13

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    .line 300
    :goto_6
    if-eqz v15, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 301
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    :cond_10
    if-nez v6, :cond_14

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1070015

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 315
    const/4 v11, 0x0

    .line 316
    .local v11, "knoxCustomSettingsState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getInstance()Landroid/app/enterprise/knoxcustom/SettingsManager;

    move-result-object v10

    .line 317
    .local v10, "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    if-eqz v10, :cond_11

    .line 318
    invoke-virtual {v10}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getSettingsHiddenState()I

    move-result v11

    .line 320
    :cond_11
    and-int/lit8 v18, v11, 0x1

    if-eqz v18, :cond_12

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    :cond_12
    and-int/lit8 v18, v11, 0x2

    if-eqz v18, :cond_2

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 297
    .end local v10    # "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    .end local v11    # "knoxCustomSettingsState":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 307
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const-string v19, "bluetooth.pan.tether_on"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x0

    const v13, 0x7f0e04fd

    const v12, 0x7f0e04a8

    const v11, 0x7f0e0829

    const/16 v10, 0x1e

    .line 383
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 385
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v8, v0, p0, v9}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 386
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 490
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v8

    .line 387
    :cond_1
    const/4 v9, 0x2

    if-ne p1, v9, :cond_2

    .line 388
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    .local v6, "tetheringUSBWarningDialog":Landroid/app/AlertDialog$Builder;
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 392
    .local v7, "warnningmsg":Landroid/widget/TextView;
    const v8, 0x7f0e15f8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 393
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a010b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 395
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 396
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 398
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 401
    const v8, 0x7f0e15f9

    new-instance v9, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v9, p0}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 408
    const/high16 v8, 0x1040000

    new-instance v9, Lcom/android/settings/TetherSettings$3;

    invoke-direct {v9, p0}, Lcom/android/settings/TetherSettings$3;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto :goto_0

    .line 414
    .end local v6    # "tetheringUSBWarningDialog":Landroid/app/AlertDialog$Builder;
    .end local v7    # "warnningmsg":Landroid/widget/TextView;
    :cond_2
    const/4 v9, 0x3

    if-ne p1, v9, :cond_3

    .line 415
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/TetherSettings$4;

    invoke-direct {v9, p0}, Lcom/android/settings/TetherSettings$4;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v8, v11, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0e074b

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 421
    :cond_3
    const/4 v9, 0x4

    if-ne p1, v9, :cond_4

    .line 422
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0e15fb

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/TetherSettings$5;

    invoke-direct {v9, p0}, Lcom/android/settings/TetherSettings$5;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v8, v11, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 428
    :cond_4
    const/4 v9, 0x5

    if-ne p1, v9, :cond_5

    .line 429
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0e0470

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/TetherSettings$7;

    invoke-direct {v9, p0}, Lcom/android/settings/TetherSettings$7;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v8, v11, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0e082a

    new-instance v10, Lcom/android/settings/TetherSettings$6;

    invoke-direct {v10, p0}, Lcom/android/settings/TetherSettings$6;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 449
    :cond_5
    const/4 v9, 0x6

    if-ne p1, v9, :cond_6

    .line 450
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/TetherSettings$8;

    invoke-direct {v9, p0}, Lcom/android/settings/TetherSettings$8;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v8, v11, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0e074d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 455
    :cond_6
    const/4 v9, 0x7

    if-ne p1, v9, :cond_0

    .line 456
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 457
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->showMetorPCSHelpPoup()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 459
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 460
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 461
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0400b5

    invoke-virtual {v4, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, "customView":Landroid/view/View;
    const v8, 0x7f0d01f3

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 463
    .local v2, "dnsCheckBox":Landroid/widget/CheckBox;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 464
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    const v8, 0x7f0d00e3

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 466
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0e0765

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0766

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/TetherSettings$10;

    invoke-direct {v10, p0, v3, v2}, Lcom/android/settings/TetherSettings$10;-><init>(Lcom/android/settings/TetherSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0e01ba

    new-instance v10, Lcom/android/settings/TetherSettings$9;

    invoke-direct {v10, p0}, Lcom/android/settings/TetherSettings$9;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1508
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1509
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helphub"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    const v0, 0x7f14000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1512
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 842
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 844
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 845
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 846
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    .line 847
    sget-boolean v2, Lcom/android/settings/TetherSettings;->DBG:Z

    if-eqz v2, :cond_0

    .line 848
    const-string v2, "TetherSettings"

    const-string v3, "onDestory:close profile proxy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 852
    if-eqz v0, :cond_1

    .line 853
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 854
    :cond_1
    const/4 v1, 0x0

    .line 856
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    .line 1516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1541
    :cond_0
    :goto_0
    return v6

    .line 1518
    :pswitch_0
    const/4 v1, 0x0

    .line 1521
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1522
    if-eqz v1, :cond_2

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1523
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1524
    .local v2, "pickIntent":Landroid/content/Intent;
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1525
    const-string v3, "helphub:section"

    const-string v4, "tethering_vzw"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1535
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1527
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v3, "helphub:section"

    const-string v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1530
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :cond_2
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1531
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1532
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    const-string v3, "helphub:appid"

    const-string v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1516
    :pswitch_data_0
    .packed-switch 0x7f0d06d5
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 831
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 833
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 834
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 836
    const-string v1, "TetherSettings"

    const-string v2, "set Discoverable mode to SCAN_MODE_CONNECTABLE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 19
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1094
    const-string v16, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 1096
    .local v6, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 1097
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 1098
    const-string v16, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1101
    :cond_0
    const-string v16, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 1103
    .local v12, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v16, "enable_bluetooth_tethering"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1104
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1105
    .local v9, "enable":Z
    const-string v16, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 1107
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1108
    .local v3, "allowInternetSharing":Z
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    .line 1110
    .local v2, "allowBluetoothMode":I
    if-eqz v3, :cond_1

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v2, v0, :cond_2

    .line 1111
    :cond_1
    const-string v16, "TetherSettings"

    const-string v17, "Internet Sharing is restricted by MDM."

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    const-string v17, "bluetooth.pan.tether_on"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x1040850

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 1114
    const/16 v16, 0x0

    .line 1228
    .end local v2    # "allowBluetoothMode":I
    .end local v3    # "allowInternetSharing":Z
    .end local v8    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v9    # "enable":Z
    :goto_0
    return v16

    .line 1116
    .restart local v2    # "allowBluetoothMode":I
    .restart local v3    # "allowInternetSharing":Z
    .restart local v8    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v9    # "enable":Z
    :cond_2
    const-string v16, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v16

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    const-string v17, "bluetooth.pan.tether_on"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1119
    const/16 v16, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1120
    const/16 v16, 0x0

    goto :goto_0

    .line 1122
    :cond_3
    if-eqz v9, :cond_5

    .line 1123
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 1227
    .end local v2    # "allowBluetoothMode":I
    .end local v3    # "allowInternetSharing":Z
    .end local v8    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v9    # "enable":Z
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 1228
    const/16 v16, 0x0

    goto :goto_0

    .line 1125
    .restart local v2    # "allowBluetoothMode":I
    .restart local v3    # "allowInternetSharing":Z
    .restart local v8    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v9    # "enable":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 1128
    :cond_6
    const/4 v10, 0x0

    .line 1130
    .local v10, "errored":Z
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v14

    .line 1131
    .local v14, "tethered":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1132
    .local v4, "bluetoothIface":Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v6, v4}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_7

    .line 1134
    const/4 v10, 0x1

    .line 1137
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothPan;

    .line 1138
    .local v5, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v5, :cond_8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1139
    :cond_8
    if-eqz v10, :cond_9

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    const v17, 0x7f0e0761

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 1142
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    const v17, 0x7f0e0760

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 1145
    .end local v2    # "allowBluetoothMode":I
    .end local v3    # "allowInternetSharing":Z
    .end local v4    # "bluetoothIface":Ljava/lang/String;
    .end local v5    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v8    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v9    # "enable":Z
    .end local v10    # "errored":Z
    .end local v14    # "tethered":[Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    const-string v16, "usb_tether_settings"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1146
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1147
    .restart local v9    # "enable":Z
    const-string v16, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    const-string v16, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    const-string v16, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    :cond_b
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v16

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1150
    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1151
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1154
    :cond_c
    const-string v16, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    const-string v16, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1156
    const/16 v16, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1157
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1160
    :cond_e
    if-eqz v9, :cond_17

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "com.android.settings"

    const-string v18, "THER"

    invoke-static/range {v16 .. v18}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v16, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 1163
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 1164
    :cond_f
    const-string v16, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v15

    .line 1166
    .local v15, "wifiState":I
    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 1167
    :cond_10
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v17, 0x7f0e0539

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f0e0536

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f0e0829

    new-instance v18, Lcom/android/settings/TetherSettings$13;

    invoke-direct/range {v18 .. v19}, Lcom/android/settings/TetherSettings$13;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f0e082a

    new-instance v18, Lcom/android/settings/TetherSettings$12;

    invoke-direct/range {v18 .. v19}, Lcom/android/settings/TetherSettings$12;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/settings/TetherSettings$14;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$14;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1197
    :cond_11
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1

    .line 1199
    .end local v15    # "wifiState":I
    :cond_12
    const-string v16, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_13

    const-string v16, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_13

    const-string v16, "MTR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    .line 1200
    :cond_13
    sget-object v16, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->getWifiDetailedState(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 1201
    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 1203
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1205
    .local v13, "tetherPreference":Landroid/content/SharedPreferences;
    const-string v16, "pref_dns_first_usb_tether_dialog"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1207
    .local v7, "dns_first_usb_tether_dialog":Z
    if-nez v7, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "com.sec.tetheringprovision"

    invoke-static/range {v16 .. v17}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_15

    .line 1208
    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 1210
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 1211
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    .line 1212
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1

    .line 1218
    .end local v7    # "dns_first_usb_tether_dialog":Z
    .end local v13    # "tetherPreference":Landroid/content/SharedPreferences;
    :cond_16
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1

    .line 1221
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 1224
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 807
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 810
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 811
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 813
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 814
    const-string v1, "TetherSettings"

    const-string v2, "onCreate: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0e08c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->finishFragment()V

    .line 827
    :cond_2
    :goto_0
    return-void

    .line 820
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 822
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 823
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 824
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 825
    const-string v1, "TetherSettings"

    const-string v2, "set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 331
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 333
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 748
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 750
    iget-boolean v4, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 751
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 752
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 753
    if-eqz v1, :cond_0

    .line 754
    const v4, 0x7f0e08c7

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 803
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 761
    .local v0, "activity":Landroid/app/Activity;
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 762
    new-instance v4, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 763
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 764
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 766
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 767
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 770
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 771
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 774
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 776
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 777
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 781
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 782
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 788
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 789
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 790
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 791
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 795
    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 802
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 860
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 862
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
