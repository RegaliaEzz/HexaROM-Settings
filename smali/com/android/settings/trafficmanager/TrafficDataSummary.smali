.class public Lcom/android/settings/trafficmanager/TrafficDataSummary;
.super Ljava/lang/Object;
.source "TrafficDataSummary.java"


# instance fields
.field private final DEFAULT_TRAFFIC_SUMMARY_START_DAY:I

.field private final DEFAULT_TRAFFIC_TOTAL:J

.field private final MB_TO_BYTE:J

.field private final TAG:Ljava/lang/String;

.field private defaultCycleDay:I

.field private isBlockData:Z

.field private mCal_Current:Ljava/util/Calendar;

.field private mCal_End:Ljava/util/Calendar;

.field private mCal_Start:Ljava/util/Calendar;

.field private mChartData:Lcom/android/settings/net/ChartData;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mEndTime:J

.field private mFreePercent:F

.field private mFreeWarningValue:F

.field private mIsExceed:Z

.field private mLoadFinihsed:Z

.field private mMiddleData:J

.field private mMiddleTime:J

.field private mRemainData:J

.field private mRemainTraffic:Ljava/lang/String;

.field private mSettingOn:Z

.field private mSimSlot:I

.field private mStartDay:I

.field private mStartTime:J

.field private mTodayEndTime:J

.field private mTodayStartTime:J

.field private mTodayused:Ljava/lang/String;

.field private mTotalData:J

.field private mTotalTraffic:Ljava/lang/String;

.field private mTrafficUsed:Ljava/lang/String;

.field private subId:I


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "TrafficDataSummary"

    iput-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->TAG:Ljava/lang/String;

    .line 30
    iput v4, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_SUMMARY_START_DAY:I

    .line 31
    iput-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_TOTAL:J

    .line 32
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->MB_TO_BYTE:J

    .line 33
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    .line 34
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    .line 36
    iput-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 37
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    .line 38
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mLoadFinihsed:Z

    .line 39
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 40
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    .line 41
    iput v4, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 43
    iput-wide v6, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 44
    iput-wide v6, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 55
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 56
    iput v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    .line 58
    iput v4, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->defaultCycleDay:I

    .line 59
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    .line 60
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isBlockData:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/net/ChartData;Landroid/content/Context;)V
    .locals 10
    .param p1, "mData"    # Lcom/android/settings/net/ChartData;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "TrafficDataSummary"

    iput-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->TAG:Ljava/lang/String;

    .line 30
    iput v4, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_SUMMARY_START_DAY:I

    .line 31
    iput-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_TOTAL:J

    .line 32
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->MB_TO_BYTE:J

    .line 33
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    .line 34
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    .line 36
    iput-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 37
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    .line 38
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mLoadFinihsed:Z

    .line 39
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 40
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    .line 41
    iput v4, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 43
    iput-wide v6, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 44
    iput-wide v6, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 55
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 56
    iput v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    .line 58
    iput v4, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->defaultCycleDay:I

    .line 59
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    .line 60
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isBlockData:Z

    .line 64
    iput-object p1, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mChartData:Lcom/android/settings/net/ChartData;

    .line 65
    iput-object p2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private getPreferenceValue()V
    .locals 24

    .prologue
    .line 75
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "the SIM slot is:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "the sub id is:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 79
    .local v15, "prefs":Landroid/content/SharedPreferences;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isBlockData:Z

    .line 81
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "restrict_data_check_box"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isBlockData:Z

    .line 84
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 85
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 86
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "switch_traffic_settings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 87
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 88
    const/4 v9, 0x0

    .line 90
    .local v9, "isTrue":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "switch_traffic_settings"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    .line 91
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_b

    .line 92
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 100
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "switch_traffic_settings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "isTrue":I
    :cond_1
    :goto_1
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mSimSlot:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "mSettingOn: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "subId:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v13, "max"

    .line 124
    .local v13, "mTotal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 125
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set_data_limit"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "max"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 126
    const-string v19, "max"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 128
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set_data_limit"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 132
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 133
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set_data_limit"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_3
    const-string v19, "max"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 156
    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 157
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 169
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 170
    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 172
    :cond_2
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 174
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "check_time"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v15, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 179
    const-string v4, "check_time"

    .line 183
    .local v4, "confirmTimeString":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 185
    .local v10, "lConfirmTime":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-wide v10

    .line 190
    :goto_5
    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-gez v19, :cond_3

    .line 191
    const-wide/16 v10, 0x0

    .line 193
    :cond_3
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mMiddleTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "lConfirmTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_4

    .line 196
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 198
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v19, "TrafficDataSummary"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mMiddleTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->defaultCycleDay:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 205
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set_package_start_date_value"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 210
    const-string v17, "set_package_start_date_value"

    .line 214
    .local v17, "startDayString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->defaultCycleDay:I

    .line 216
    .local v8, "iStart":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v8

    .line 222
    :goto_6
    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v8, v0, :cond_5

    const/16 v19, 0x1f

    move/from16 v0, v19

    if-le v8, v0, :cond_6

    .line 223
    :cond_5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->defaultCycleDay:I

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    :cond_6
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mStartDay:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "iStart:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 229
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 231
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    const-string v12, "0.00"

    .line 237
    .local v12, "mMiddle":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data_used_by_check_time"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "0.00"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 241
    const-string v19, "TrafficDataSummary"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mMiddle:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v5, "data_used_by_check_time"

    .line 247
    .local v5, "confirmTrafficString":Ljava/lang/String;
    const-string v16, "0.00"

    .line 249
    .local v16, "sConfirmTraffic":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v16

    .line 254
    :goto_7
    if-eqz v16, :cond_8

    const-string v19, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string v19, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 255
    :cond_8
    const-string v19, "TrafficDataSummary"

    const-string v20, "getConfirmTraffic : false"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v16, "0.00"

    .line 258
    :cond_9
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mMiddle:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sConfirmTraffic:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v19, "0.00"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 261
    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 263
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_a
    :try_start_5
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 269
    .local v14, "mmData":F
    const/high16 v19, 0x49800000    # 1048576.0f

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 274
    .end local v14    # "mmData":F
    :goto_8
    const-string v18, "off"

    .line 275
    .local v18, "warningValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 276
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data_warning_set"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 277
    const-string v19, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 279
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data_warning_set"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    move-result-object v18

    .line 283
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 284
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data_warning_set"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_a
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "warningValue:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v19, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 308
    const/high16 v19, -0x40800000    # -1.0f

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    .line 317
    :goto_b
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mFreeWarningValue:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 93
    .end local v4    # "confirmTimeString":Ljava/lang/String;
    .end local v5    # "confirmTrafficString":Ljava/lang/String;
    .end local v8    # "iStart":I
    .end local v10    # "lConfirmTime":J
    .end local v12    # "mMiddle":Ljava/lang/String;
    .end local v13    # "mTotal":Ljava/lang/String;
    .end local v16    # "sConfirmTraffic":Ljava/lang/String;
    .end local v17    # "startDayString":Ljava/lang/String;
    .end local v18    # "warningValue":Ljava/lang/String;
    .restart local v9    # "isTrue":I
    :cond_b
    if-nez v9, :cond_0

    .line 94
    const/16 v19, 0x0

    :try_start_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 96
    :catch_0
    move-exception v6

    .line 97
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    goto/16 :goto_0

    .line 104
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v9    # "isTrue":I
    :cond_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "switch_traffic_settings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 105
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 106
    const/4 v9, 0x0

    .line 108
    .restart local v9    # "isTrue":I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "switch_traffic_settings"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    .line 109
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_e

    .line 110
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    .line 117
    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 118
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "switch_traffic_settings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 111
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_e
    if-nez v9, :cond_d

    .line 112
    const/16 v19, 0x0

    :try_start_9
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_c

    .line 114
    :catch_1
    move-exception v6

    .line 115
    .restart local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    goto :goto_c

    .line 129
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v9    # "isTrue":I
    .restart local v13    # "mTotal":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 130
    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "max"

    goto/16 :goto_2

    .line 136
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set_data_limit"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 140
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set_data_limit"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "max"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 141
    const-string v19, "max"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 143
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set_data_limit"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v13

    .line 147
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 148
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set_data_limit"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 144
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_3
    move-exception v6

    .line 145
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v13, "max"

    goto :goto_d

    .line 151
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set_data_limit"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 161
    :cond_12
    :try_start_b
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 162
    .restart local v14    # "mmData":F
    float-to-long v0, v14

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x100000

    mul-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_4

    .line 163
    .end local v14    # "mmData":F
    :catch_4
    move-exception v6

    .line 164
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 166
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    goto/16 :goto_4

    .line 186
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "confirmTimeString":Ljava/lang/String;
    .restart local v10    # "lConfirmTime":J
    :catch_5
    move-exception v6

    .line 187
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v19, "TrafficDataSummary"

    const-string v20, "lConfirmTime SettingNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-wide/16 v10, 0x0

    goto/16 :goto_5

    .line 217
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v8    # "iStart":I
    .restart local v17    # "startDayString":Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 218
    .restart local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v19, "TrafficDataSummary"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "iStart SettingNotFoundException, set default:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->defaultCycleDay:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->defaultCycleDay:I

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 250
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v5    # "confirmTrafficString":Ljava/lang/String;
    .restart local v12    # "mMiddle":Ljava/lang/String;
    .restart local v16    # "sConfirmTraffic":Ljava/lang/String;
    :catch_7
    move-exception v6

    .line 251
    .local v6, "e":Ljava/lang/Exception;
    const-string v19, "TrafficDataSummary"

    const-string v20, "sConfirmTraffic SettingNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v16, "0.00"

    goto/16 :goto_7

    .line 270
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v6

    .line 271
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    goto/16 :goto_8

    .line 280
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v18    # "warningValue":Ljava/lang/String;
    :catch_9
    move-exception v6

    .line 281
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v18, "off"

    goto/16 :goto_9

    .line 287
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data_warning_set"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 291
    :cond_14
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data_warning_set"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 292
    const-string v19, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 294
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data_warning_set"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    move-result-object v18

    .line 298
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 299
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data_warning_set"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_a

    .line 295
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_a
    move-exception v6

    .line 296
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v18, "off"

    goto :goto_e

    .line 302
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data_warning_set"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 311
    :cond_16
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    :try_start_d
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto/16 :goto_b

    .line 312
    :catch_b
    move-exception v6

    .line 313
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/high16 v19, -0x40800000    # -1.0f

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    goto/16 :goto_b
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .prologue
    .line 520
    iget-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mEndTime:J

    return-wide v0
.end method

.method public getFreePercent()F
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    return v0
.end method

.method public getIsBlockData()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isBlockData:Z

    return v0
.end method

.method public getIsExceed()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    return v0
.end method

.method public getIsMonitorOn()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    return v0
.end method

.method public getRemainTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 516
    iget-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    return-wide v0
.end method

.method public getTheTime()V
    .locals 22

    .prologue
    .line 390
    const-string v17, "TrafficDataSummary"

    const-string v18, "getTheTime()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    .line 393
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    .line 394
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    .line 395
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    .line 396
    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 397
    .local v5, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 400
    .local v12, "mCurrent_year":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 401
    .local v10, "mCurrent_month":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 402
    .local v6, "mCurrent_day":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 403
    .local v7, "mCurrent_hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 404
    .local v9, "mCurrent_min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 405
    .local v11, "mCurrent_sec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 406
    .local v8, "mCurrent_mSec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_1

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    .line 431
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-gez v17, :cond_0

    .line 433
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 436
    :cond_0
    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 437
    .local v4, "Startdate":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 439
    .local v13, "mEndMonth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 440
    .local v14, "mEndYear":I
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    add-int/lit8 v19, v13, 0x1

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 446
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mEndTime:J

    .line 447
    const-string v17, "TrafficDataSummary/LPF"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mEndTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mEndTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    .line 456
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x5265c00

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayEndTime:J

    .line 457
    const-string v17, "TrafficDataSummary/LPF"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mTodayStartTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v17, "TrafficDataSummary/LPF"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mCurrentTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void

    .line 416
    .end local v4    # "Startdate":Ljava/util/Date;
    .end local v13    # "mEndMonth":I
    .end local v14    # "mEndYear":I
    :cond_1
    add-int/lit8 v15, v10, -0x1

    .line 417
    .local v15, "mStart_month":I
    move/from16 v16, v12

    .line 418
    .local v16, "mStart_year":I
    if-gez v15, :cond_2

    .line 419
    add-int/lit8 v16, v16, -0x1

    .line 420
    const/16 v15, 0xb

    .line 422
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    goto/16 :goto_0

    .line 443
    .end local v15    # "mStart_month":I
    .end local v16    # "mStart_year":I
    .restart local v4    # "Startdate":Ljava/util/Date;
    .restart local v13    # "mEndMonth":I
    .restart local v14    # "mEndYear":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v19, v14, 0x1

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1
.end method

.method public getTodayused()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalData()J
    .locals 2

    .prologue
    .line 572
    iget-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    return-wide v0
.end method

.method public getTotalTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getWarningByte()J
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 546
    const-wide/16 v4, 0x0

    .line 549
    .local v4, "middle_real_value":J
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "middle_real_value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    .line 553
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "warining set the middle_real_value is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    iget-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 558
    .local v0, "correct_used":J
    iget-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    long-to-double v8, v8

    iget v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    float-to-double v10, v3

    sub-double v10, v12, v10

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-long v6, v8

    .line 559
    .local v6, "result":J
    iget-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    iget-wide v10, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    .line 560
    iget-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    long-to-double v8, v8

    iget v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    float-to-double v10, v3

    sub-double v10, v12, v10

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-long v8, v8

    sub-long v10, v0, v4

    sub-long v6, v8, v10

    .line 562
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 563
    const-wide/16 v6, 0x0

    .line 565
    :cond_1
    return-wide v6

    .line 554
    .end local v0    # "correct_used":J
    .end local v6    # "result":J
    :catch_0
    move-exception v2

    .line 555
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TrafficDataSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception happend:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWarningValue()F
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    return v0
.end method

.method public getlimiValue()J
    .locals 12

    .prologue
    .line 523
    const-wide/16 v4, 0x0

    .line 526
    .local v4, "middle_real_value":J
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "middle_real_value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    .line 530
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the middle_real_value is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    iget-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 535
    .local v0, "correct_used":J
    iget-wide v6, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 536
    .local v6, "result":J
    iget-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    iget-wide v10, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    .line 537
    iget-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    sub-long v10, v0, v4

    sub-long v6, v8, v10

    .line 539
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 540
    const-wide/16 v6, 0x0

    .line 542
    :cond_1
    return-wide v6

    .line 531
    .end local v0    # "correct_used":J
    .end local v6    # "result":J
    :catch_0
    move-exception v2

    .line 532
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TrafficDataSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception happend:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPackagedSetted()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    return v0
.end method

.method public setChartData(Lcom/android/settings/net/ChartData;)V
    .locals 0
    .param p1, "mData"    # Lcom/android/settings/net/ChartData;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mChartData:Lcom/android/settings/net/ChartData;

    .line 73
    return-void
.end method

.method public setDefaultCycleDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 506
    iput p1, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->defaultCycleDay:I

    .line 507
    return-void
.end method

.method public setSimSlot(I)V
    .locals 0
    .param p1, "slot"    # I

    .prologue
    .line 498
    iput p1, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    .line 499
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 502
    iput p1, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    .line 503
    return-void
.end method

.method public updateDataInfomation()V
    .locals 24

    .prologue
    .line 320
    const-string v3, "TrafficDataSummary"

    const-string v4, "updateDataInfomation()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getPreferenceValue()V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getTheTime()V

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    .line 325
    const-wide/16 v22, 0x0

    .line 326
    .local v22, "totalBytes":J
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the mMiddleTime is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the start is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the mCurrentTime is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mEndTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    .line 331
    .local v11, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v11, :cond_0

    iget-wide v4, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v4, v6

    .line 332
    :goto_0
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the totalBytes is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total_used"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-static {v3, v4, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    .line 365
    :goto_1
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTrafficUsed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayEndTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 367
    .local v12, "entry_today":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v12, :cond_3

    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v18, v4, v6

    .line 368
    .local v18, "todayBytes":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    .line 369
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "todayBytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTodayused:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    move-wide/from16 v20, v0

    .line 372
    .local v20, "total":J
    sub-long v4, v20, v22

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 373
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRemainData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    cmp-long v3, v20, v22

    if-gez v3, :cond_4

    .line 376
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 377
    sub-long v14, v22, v20

    .line 378
    .local v14, "mRm":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v3, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    .line 379
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 383
    .end local v14    # "mRm":J
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v3, v20, v4

    if-lez v3, :cond_5

    .line 384
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    long-to-float v3, v4

    move-wide/from16 v0, v20

    long-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    .line 387
    :goto_4
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFreePercent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void

    .line 331
    .end local v12    # "entry_today":Landroid/net/NetworkStatsHistory$Entry;
    .end local v18    # "todayBytes":J
    .end local v20    # "total":J
    :cond_0
    const-wide/16 v22, 0x0

    goto/16 :goto_0

    .line 342
    .end local v11    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mEndTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    .line 343
    .restart local v11    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v11, :cond_2

    iget-wide v4, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v4, v6

    .line 344
    :goto_5
    const-wide/16 v16, 0x0

    .line 347
    .local v16, "middle_real_value":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "middle_real_value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v16

    .line 351
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the middle_real_value is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_6
    sub-long v4, v22, v16

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    add-long v22, v4, v6

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total_used"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-static {v3, v4, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    goto/16 :goto_1

    .line 343
    .end local v16    # "middle_real_value":J
    :cond_2
    const-wide/16 v22, 0x0

    goto :goto_5

    .line 352
    .restart local v16    # "middle_real_value":J
    :catch_0
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception happend:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 367
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v16    # "middle_real_value":J
    .restart local v12    # "entry_today":Landroid/net/NetworkStatsHistory$Entry;
    :cond_3
    const-wide/16 v18, 0x0

    goto/16 :goto_2

    .line 381
    .restart local v18    # "todayBytes":J
    .restart local v20    # "total":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    goto/16 :goto_3

    .line 386
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    goto/16 :goto_4
.end method
