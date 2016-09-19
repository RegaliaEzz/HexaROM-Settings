.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field static final AUTHORITY_URI:Landroid/net/Uri;

.field static final CONTENT_URI_APP_OPTIMISATION:Landroid/net/Uri;

.field static final CONTENT_URI_SETTINGS:Landroid/net/Uri;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppOptimisationPref:Landroid/preference/PreferenceScreen;

.field private mBatteryUsageDescPref:Landroid/preference/Preference;

.field private mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

.field private mFastCableChargingPref:Landroid/preference/SwitchPreference;

.field private mFastWirelessChargingObserver:Landroid/database/ContentObserver;

.field private mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

.field private mFreezerCount:I

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mPowerSavingModePref:Landroid/preference/PreferenceScreen;

.field private mSpcmCount:I

.field private mStatsType:I

.field private mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "content://com.samsung.android.sm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->AUTHORITY_URI:Landroid/net/Uri;

    .line 125
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "AppFreezer"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->CONTENT_URI_APP_OPTIMISATION:Landroid/net/Uri;

    .line 126
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->CONTENT_URI_SETTINGS:Landroid/net/Uri;

    .line 709
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 131
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 140
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingObserver:Landroid/database/ContentObserver;

    .line 681
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 400
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 401
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f0e0ab0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 402
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 403
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 404
    return-void
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 423
    .local v16, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v14, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    .line 425
    .local v11, "numSippers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_a

    .line 426
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    .line 427
    .local v15, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_9

    .line 428
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    .line 432
    .local v13, "realUid":I
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 433
    const/16 v17, 0x0

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 438
    :cond_0
    invoke-static {v13}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isSystemUid(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "mediaserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 443
    const/16 v13, 0x3e8

    .line 446
    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 448
    new-instance v10, Lcom/android/internal/os/BatterySipper;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings/fuelgauge/FakeUid;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 450
    .local v10, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 451
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 452
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 453
    move-object v15, v10

    .line 456
    .end local v10    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 457
    .local v7, "index":I
    if-gez v7, :cond_4

    .line 459
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 462
    .restart local v7    # "index":I
    .restart local v13    # "realUid":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 463
    .local v5, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 464
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 466
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 469
    :cond_5
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 471
    .local v4, "existingPackageLen":I
    :goto_2
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .line 473
    .local v8, "newPackageLen":I
    :goto_3
    if-lez v8, :cond_3

    .line 474
    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 475
    .local v9, "newPackages":[Ljava/lang/String;
    if-lez v4, :cond_6

    .line 476
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    :cond_6
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_1

    .line 469
    .end local v4    # "existingPackageLen":I
    .end local v8    # "newPackageLen":I
    .end local v9    # "newPackages":[Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 471
    .restart local v4    # "existingPackageLen":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 485
    .end local v4    # "existingPackageLen":I
    .end local v5    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_9
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    .end local v15    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 490
    .local v12, "numUidSippers":I
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_b

    .line 491
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 495
    :cond_b
    new-instance v17, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 501
    return-object v14
.end method

.method private getFreezedAppInfo()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 760
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->CONTENT_URI_APP_OPTIMISATION:Landroid/net/Uri;

    const-string v3, "(isSMFreezed=0 AND extras=\'1\')"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 761
    .local v7, "spcmCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 762
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSpcmCount:I

    .line 763
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->CONTENT_URI_APP_OPTIMISATION:Landroid/net/Uri;

    const-string v3, "isSMFreezed= 1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 767
    .local v6, "freezerCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFreezerCount:I

    .line 769
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_1
    return-void
.end method

.method private isAppOptimisationOn()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 774
    const/4 v6, 0x0

    .line 777
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->CONTENT_URI_SETTINGS:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "spcm_switch"

    aput-object v9, v4, v5

    const-string v5, "value LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 778
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 784
    :goto_0
    if-eqz v6, :cond_0

    .line 785
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v8

    .line 779
    goto :goto_0

    .line 784
    :cond_2
    if-eqz v6, :cond_3

    .line 785
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    goto :goto_1

    .line 784
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 785
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static isSharedGid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 407
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 411
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 368
    const v0, 0x7f0e0d7a

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x36

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 149
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v3, 0x7f08008b

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 152
    const-string v3, "battery_history"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    .line 153
    const-string v3, "battery_usage_desc"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUsageDescPref:Landroid/preference/Preference;

    .line 154
    const-string v3, "app_list"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 156
    const-string v3, "powersaving"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    .line 157
    const-string v3, "ultra_powersaving"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    .line 158
    const-string v3, "fast_cable_charging"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    .line 159
    const-string v3, "fast_wireless_charging"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    .line 160
    const-string v3, "display_battery_level"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    .line 161
    const-string v3, "app_optimisation"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppOptimisationPref:Landroid/preference/PreferenceScreen;

    .line 163
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUsageDescPref:Landroid/preference/Preference;

    const v6, 0x7f040040

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 166
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "from"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "from":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    const-string v3, "smartmanager"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v4

    .line 169
    .local v2, "isRemove":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_6

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isAppOptUIAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppOptimisationPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    :cond_1
    const-string v3, "display_battery_level"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    :cond_2
    const-string v3, "fast_cable_charging"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 205
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    :cond_3
    const-string v3, "fast_wireless_charging"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 207
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    :cond_4
    return-void

    .end local v2    # "isRemove":Z
    :cond_5
    move v2, v5

    .line 167
    goto :goto_0

    .line 176
    .restart local v2    # "isRemove":Z
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPSM()Z

    move-result v3

    if-nez v3, :cond_7

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 180
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastCableCharger()Z

    move-result v3

    if-nez v3, :cond_c

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "show_wireless_charger_menu"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_d

    .line 192
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 185
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "adaptive_fast_charging"

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "adaptive_fast_charging"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 194
    :cond_d
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wireless_fast_charging"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_e

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_e
    move v4, v5

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 344
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const v3, 0x7f0e0f1d

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 345
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 346
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 276
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 374
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 395
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 376
    :pswitch_1
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    .line 377
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 381
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 382
    const/4 v1, 0x1

    goto :goto_0

    .line 379
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 384
    :pswitch_2
    const-class v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0e0b13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 386
    const/4 v1, 0x1

    goto :goto_0

    .line 388
    :pswitch_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "classname"

    const-class v3, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e0f1d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 393
    const/4 v1, 0x1

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 262
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 267
    :cond_0
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPause()V

    .line 268
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 315
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 318
    .local v1, "value":Z
    const-string v4, "display_battery_level"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_battery_percentage"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    :cond_1
    :goto_0
    return v3

    .line 321
    :cond_2
    const-string v4, "fast_cable_charging"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adaptive_fast_charging"

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 324
    :cond_4
    const-string v4, "fast_wireless_charging"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wireless_fast_charging"

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 280
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 281
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    .line 282
    .local v4, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_battery_percentage"

    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    .end local v4    # "value":Z
    :goto_0
    return v6

    .line 285
    :cond_1
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 286
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0

    .line 287
    :cond_2
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 288
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0

    .line 289
    :cond_3
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppOptimisationPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v0, "activityIntent":Landroid/content/Intent;
    :try_start_0
    const-string v7, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const/high16 v7, 0x10000000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v0    # "activityIntent":Landroid/content/Intent;
    :cond_4
    :goto_1
    instance-of v7, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v7, :cond_7

    move v6, v5

    .line 304
    goto :goto_0

    .line 295
    .restart local v0    # "activityIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 298
    .end local v0    # "activityIntent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 299
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0

    .line 300
    :cond_6
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 301
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0

    :cond_7
    move-object v3, p2

    .line 306
    check-cast v3, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 307
    .local v3, "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v2

    .line 308
    .local v2, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SettingsActivity;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-static {v5, v7, v8, v2, v6}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Z)V

    .line 310
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const v4, 0x7f0e0941

    const v3, 0x7f0e0940

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 218
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onResume()V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "low_power"

    invoke-static {v2, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 225
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ultra_powersaving_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 232
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 233
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "adaptive_fast_charging"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 234
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wireless_fast_charging"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    :goto_3
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wireless_fast_charging"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 236
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "display_battery_percentage"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v5

    :goto_4
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isAppOptUIAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getFreezedAppInfo()V

    .line 241
    iget v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFreezerCount:I

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSpcmCount:I

    add-int v0, v2, v3

    .line 242
    .local v0, "sumOptimisingApps":I
    const v2, 0x7f0e010b

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "summary":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isAppOptimisationOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    if-nez v0, :cond_8

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e010c

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    :cond_1
    :goto_5
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppOptimisationPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    .end local v0    # "sumOptimisingApps":I
    .end local v1    # "summary":Ljava/lang/String;
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 222
    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 225
    goto/16 :goto_1

    :cond_5
    move v2, v6

    .line 233
    goto/16 :goto_2

    :cond_6
    move v2, v6

    .line 234
    goto/16 :goto_3

    :cond_7
    move v2, v6

    .line 236
    goto :goto_4

    .line 248
    .restart local v0    # "sumOptimisingApps":I
    .restart local v1    # "summary":Ljava/lang/String;
    :cond_8
    if-ne v0, v5, :cond_9

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e010d

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 251
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e010e

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method protected refreshStats()V
    .locals 50

    .prologue
    .line 505
    invoke-super/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updatePreference(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 509
    const/4 v7, 0x0

    .line 511
    .local v7, "addedSome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v25

    .line 512
    .local v25, "powerProfile":Lcom/android/internal/os/PowerProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v36

    .line 513
    .local v36, "stats":Landroid/os/BatteryStats;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v23, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/fuelgauge/PowerGaugePreference;>;"
    const-wide/16 v32, 0x0

    .line 516
    .local v32, "powerTotal":D
    new-instance v11, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-direct {v11, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 517
    .local v11, "batteryTimePref":Landroid/preference/Preference;
    if-eqz v36, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    const-wide/16 v46, 0x3e8

    mul-long v44, v44, v46

    const/16 v46, 0x0

    move-object/from16 v0, v36

    move-wide/from16 v1, v44

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v40

    .line 518
    .local v40, "uSecTime":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v44

    const-wide/16 v46, 0x3e8

    div-long v46, v40, v46

    move-wide/from16 v0, v46

    long-to-double v0, v0

    move-wide/from16 v46, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v15

    .line 519
    .local v15, "durationString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v44

    const v45, 0x7f0e0abf

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v15, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 520
    .local v19, "mDurationString":Ljava/lang/String;
    const/16 v44, -0x1

    move/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 521
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 522
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v44

    if-nez v44, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 526
    :cond_0
    const-string v44, "screen.full"

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    .line 528
    .local v8, "averagePower":D
    new-instance v43, Landroid/util/TypedValue;

    invoke-direct/range {v43 .. v43}, Landroid/util/TypedValue;-><init>()V

    .line 529
    .local v43, "value":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v44

    const v45, 0x1010429

    const/16 v46, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v43

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v44

    move-object/from16 v0, v43

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/content/Context;->getColor(I)I

    move-result v12

    .line 532
    .local v12, "colorControl":I
    const-wide/high16 v44, 0x4024000000000000L    # 10.0

    cmpl-double v44, v8, v44

    if-gez v44, :cond_4

    .line 628
    :cond_1
    :goto_1
    if-nez v7, :cond_10

    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 645
    :cond_2
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 646
    return-void

    .line 517
    .end local v8    # "averagePower":D
    .end local v12    # "colorControl":I
    .end local v15    # "durationString":Ljava/lang/String;
    .end local v19    # "mDurationString":Ljava/lang/String;
    .end local v40    # "uSecTime":J
    .end local v43    # "value":Landroid/util/TypedValue;
    :cond_3
    const-wide/16 v40, 0x0

    goto/16 :goto_0

    .line 533
    .restart local v8    # "averagePower":D
    .restart local v12    # "colorControl":I
    .restart local v15    # "durationString":Ljava/lang/String;
    .restart local v19    # "mDurationString":Ljava/lang/String;
    .restart local v40    # "uSecTime":J
    .restart local v43    # "value":Landroid/util/TypedValue;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v37

    .line 536
    .local v37, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v36, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v44, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v14

    .line 538
    .local v14, "dischargeAmount":I
    :goto_2
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v24

    .line 539
    .local v24, "numSippers":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 540
    move-object/from16 v0, v37

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/os/BatterySipper;

    .line 541
    .local v35, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v44, v0

    const-wide v46, 0x40ac200000000000L    # 3600.0

    mul-double v44, v44, v46

    const-wide/high16 v46, 0x4014000000000000L    # 5.0

    cmpg-double v44, v44, v46

    if-gez v44, :cond_7

    .line 539
    :cond_5
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 536
    .end local v14    # "dischargeAmount":I
    .end local v17    # "i":I
    .end local v24    # "numSippers":I
    .end local v35    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .line 544
    .restart local v14    # "dischargeAmount":I
    .restart local v17    # "i":I
    .restart local v24    # "numSippers":I
    .restart local v35    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v38

    .line 545
    .local v38, "totalPower":D
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v44, v0

    div-double v44, v44, v38

    int-to-double v0, v14

    move-wide/from16 v46, v0

    mul-double v30, v44, v46

    .line 547
    .local v30, "percentOfTotal":D
    const-wide/high16 v44, 0x3fe0000000000000L    # 0.5

    add-double v44, v44, v30

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_5

    .line 550
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v44, v0

    sget-object v45, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_8

    .line 553
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v46

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    mul-double v46, v46, v48

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    div-double v46, v46, v48

    cmpg-double v44, v44, v46

    if-ltz v44, :cond_5

    .line 556
    const-wide/high16 v44, 0x4024000000000000L    # 10.0

    cmpg-double v44, v30, v44

    if-ltz v44, :cond_5

    .line 559
    const-string v44, "user"

    sget-object v45, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_5

    .line 563
    :cond_8
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v44, v0

    sget-object v45, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_9

    .line 566
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v46

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    div-double v46, v46, v48

    cmpg-double v44, v44, v46

    if-ltz v44, :cond_5

    .line 569
    const-wide/high16 v44, 0x4014000000000000L    # 5.0

    cmpg-double v44, v30, v44

    if-ltz v44, :cond_5

    .line 572
    const-string v44, "user"

    sget-object v45, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_5

    .line 577
    :cond_9
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v44

    const v45, 0x182b8

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_a

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v44

    const v45, 0x1869f

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_5

    .line 580
    :cond_a
    new-instance v42, Landroid/os/UserHandle;

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v44

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v44

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 581
    .local v42, "userHandle":Landroid/os/UserHandle;
    new-instance v16, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v46, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 582
    .local v16, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 584
    .local v10, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 586
    .local v13, "contentDescription":Ljava/lang/CharSequence;
    new-instance v34, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v13, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 589
    .local v34, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v44, v0

    const-wide/high16 v46, 0x4059000000000000L    # 100.0

    mul-double v44, v44, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v46

    div-double v26, v44, v46

    .line 591
    .local v26, "percentOfMax":D
    move-wide/from16 v0, v30

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 592
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 593
    add-int/lit8 v44, v17, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 594
    move-object/from16 v0, v34

    move-wide/from16 v1, v26

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 595
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v44, v0

    if-eqz v44, :cond_b

    .line 596
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 602
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v44

    const-string v45, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual/range {v44 .. v45}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v45, "tphone"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_f

    .line 603
    const-string v20, "com.skt.prod.phone"

    .line 604
    .local v20, "mTphone":Ljava/lang/String;
    const-string v21, "com.skt.prod.dialer"

    .line 605
    .local v21, "mTphoneDialer":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f0e0fa3

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 606
    .local v22, "mTphoneString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 607
    .local v6, "Sipper_Name":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_d

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "com.skt.prod.phone"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_c

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "com.skt.prod.dialer"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_d

    .line 608
    :cond_c
    const-string v44, "PowerUsageSummary"

    const-string v45, "remove T phone"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 610
    :cond_d
    if-eqz v6, :cond_f

    const-string v44, "com.skt.prod.phone"

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_e

    const-string v44, "com.skt.prod.dialer"

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_f

    .line 611
    :cond_e
    const-string v44, "PowerUsageSummary"

    const-string v45, "remove T phone"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 615
    .end local v6    # "Sipper_Name":Ljava/lang/String;
    .end local v20    # "mTphone":Ljava/lang/String;
    .end local v21    # "mTphoneDialer":Ljava/lang/String;
    .end local v22    # "mTphoneString":Ljava/lang/String;
    :cond_f
    const/4 v7, 0x1

    .line 616
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v44, v0

    add-double v32, v32, v44

    .line 617
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v44, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPower(D)V

    .line 618
    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v44

    const/16 v45, 0xb

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_5

    goto/16 :goto_1

    .line 631
    .end local v10    # "badgedIcon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "contentDescription":Ljava/lang/CharSequence;
    .end local v14    # "dischargeAmount":I
    .end local v16    # "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    .end local v17    # "i":I
    .end local v24    # "numSippers":I
    .end local v26    # "percentOfMax":D
    .end local v30    # "percentOfTotal":D
    .end local v34    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v35    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v37    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v38    # "totalPower":D
    .end local v42    # "userHandle":Landroid/os/UserHandle;
    :cond_10
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_2

    .line 632
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 633
    .restart local v34    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual/range {v34 .. v34}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getPower()D

    move-result-wide v44

    const-wide/high16 v46, 0x4059000000000000L    # 100.0

    mul-double v44, v44, v46

    div-double v28, v44, v32

    .line 637
    .local v28, "percentOfPref":D
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    cmpl-double v44, v28, v44

    if-ltz v44, :cond_11

    .line 638
    move-object/from16 v0, v34

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method protected updatePreference(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f0e0111

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 350
    const-string v1, "status"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 352
    .local v0, "status":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 354
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 355
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 356
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 363
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->updatePreference(Landroid/content/Intent;)V

    .line 364
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 359
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastCableChargingPref:Landroid/preference/SwitchPreference;

    const v2, 0x7f0e0110

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 360
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 361
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFastWirelessChargingPref:Landroid/preference/SwitchPreference;

    const v2, 0x7f0e0114

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method
