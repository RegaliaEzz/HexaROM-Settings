.class public Lcom/android/settings/datasaving/DataSavingHelper;
.super Ljava/lang/Object;
.source "DataSavingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;,
        Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/settings/datasaving/DataSavingHelper;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCurrentIMSI:Ljava/lang/String;

.field private mNeedToBindSavingService:Z

.field private mNeedToBindTrafficService:Z

.field private mSavedBytes:J

.field private final mSavingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

.field private final mSavingServiceConnection:Landroid/content/ServiceConnection;

.field private mStateListenerRegistered:Z

.field private final mTrafficListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

.field private final mTrafficServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sInstance:Lcom/android/settings/datasaving/DataSavingHelper;

    .line 48
    sput-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mAppContext:Landroid/content/Context;

    .line 50
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    .line 67
    iput-boolean v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindSavingService:Z

    .line 68
    iput-boolean v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindTrafficService:Z

    .line 70
    iput-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    .line 71
    iput-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    .line 72
    iput-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mStateListenerRegistered:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/android/settings/datasaving/DataSavingHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datasaving/DataSavingHelper$1;-><init>(Lcom/android/settings/datasaving/DataSavingHelper;)V

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    .line 125
    new-instance v0, Lcom/android/settings/datasaving/DataSavingHelper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datasaving/DataSavingHelper$2;-><init>(Lcom/android/settings/datasaving/DataSavingHelper;)V

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficServiceConnection:Landroid/content/ServiceConnection;

    .line 222
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mAppContext:Landroid/content/Context;

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datasaving/DataSavingHelper;)Lcom/opera/max/sdk/saving/ISavingService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/datasaving/DataSavingHelper;Lcom/opera/max/sdk/saving/ISavingService;)Lcom/opera/max/sdk/saving/ISavingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;
    .param p1, "x1"    # Lcom/opera/max/sdk/saving/ISavingService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/datasaving/DataSavingHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/datasaving/DataSavingHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindSavingService:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/datasaving/DataSavingHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindSavingService:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/datasaving/DataSavingHelper;)Lcom/opera/max/sdk/traffic/ITrafficService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/datasaving/DataSavingHelper;Lcom/opera/max/sdk/traffic/ITrafficService;)Lcom/opera/max/sdk/traffic/ITrafficService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;
    .param p1, "x1"    # Lcom/opera/max/sdk/traffic/ITrafficService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/datasaving/DataSavingHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/datasaving/DataSavingHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindTrafficService:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/datasaving/DataSavingHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindTrafficService:Z

    return p1
.end method

.method private getCurrentDataSoltId()I
    .locals 2

    .prologue
    .line 263
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 264
    .local v0, "subId":I
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v1

    return v1
.end method

.method private getDefaultDataIMSI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->isSupportMultiSIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    sget-object v1, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 240
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 242
    .end local v0    # "tel":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->getCurrentDataSoltId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/datasaving/DataSavingHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 158
    sput-object p0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    .line 160
    :cond_0
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sInstance:Lcom/android/settings/datasaving/DataSavingHelper;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-direct {v0}, Lcom/android/settings/datasaving/DataSavingHelper;-><init>()V

    sput-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sInstance:Lcom/android/settings/datasaving/DataSavingHelper;

    .line 164
    :cond_1
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sInstance:Lcom/android/settings/datasaving/DataSavingHelper;

    return-object v0
.end method

.method private getSavingServiceIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.opera.max.sdk.saving.SavingService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oupeng.max.sdk"

    const-string v2, "com.opera.max.sdk.saving.SavingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v1, "EXTRA_SHOW_NOTIFICATION"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    const-string v1, "EXTRA_HIDE_NOTIFICATION_AFTER_SAVING_OFF"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    return-object v0
.end method

.method private getTrafficServiceIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.opera.max.sdk.traffic.TrafficService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oupeng.max.sdk"

    const-string v2, "com.opera.max.sdk.traffic.TrafficService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    return-object v0
.end method

.method public static getUsageText(J)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 383
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isSupportMultiSIM()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    sget-object v3, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 256
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 259
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 257
    goto :goto_0

    :cond_1
    move v1, v2

    .line 259
    goto :goto_0
.end method


# virtual methods
.method public bindSavingService()Z
    .locals 8

    .prologue
    .line 394
    const/4 v3, 0x1

    .line 395
    .local v3, "result":Z
    invoke-virtual {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->isSavingServiceBound()Z

    move-result v4

    if-nez v4, :cond_1

    .line 397
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->getSavingServiceIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 399
    const-string v4, "DataSavingHelper"

    const-string v5, "bindSavingService failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    const/4 v3, 0x0

    .line 413
    :cond_0
    :goto_0
    return v3

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DataSavingHelper"

    const-string v5, "bindSavingService failed with exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v3, 0x0

    .line 405
    goto :goto_0

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;

    .line 408
    .local v2, "listener":Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    if-eqz v2, :cond_2

    .line 409
    iget-object v4, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    invoke-interface {v2, v4}, Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;->onConnected(Lcom/opera/max/sdk/saving/ISavingService;)V

    goto :goto_1
.end method

.method public bindServices()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->getDefaultDataIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->bindSavingService()Z

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->bindTrafficService()V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "DataSavingHelper"

    const-string v1, "mAppContext is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindTrafficService()V
    .locals 7

    .prologue
    .line 433
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    if-nez v3, :cond_1

    .line 435
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->getTrafficServiceIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficServiceConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 437
    const-string v3, "DataSavingHelper"

    const-string v4, "bindTrafficService failed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DataSavingHelper"

    const-string v4, "bindTrafficService failed with exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    .line 444
    .local v2, "listener":Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;
    if-eqz v2, :cond_2

    .line 445
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    invoke-interface {v2, v3}, Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;->onConnected(Lcom/opera/max/sdk/traffic/ITrafficService;)V

    goto :goto_1
.end method

.method public getIMSIBySoltId(I)Ljava/lang/String;
    .locals 1
    .param p1, "soltId"    # I

    .prologue
    .line 250
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSavedBytesByUid(IJJ)J
    .locals 14
    .param p1, "uid"    # I
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 362
    const-wide/16 v12, 0x0

    .line 363
    .local v12, "savedBytes":J
    const-string v3, "DataSavingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "endTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    if-eqz v3, :cond_0

    .line 365
    const-string v3, "DataSavingHelper"

    const-string v4, "try to get saved data by UID"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    iget-object v4, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    const/4 v10, 0x1

    move v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-interface/range {v3 .. v10}, Lcom/opera/max/sdk/traffic/ITrafficService;->getTrafficSummaryByUid(Ljava/lang/String;IJJZ)Lcom/opera/max/sdk/traffic/TrafficEntry;

    move-result-object v11

    .line 369
    .local v11, "entry":Lcom/opera/max/sdk/traffic/TrafficEntry;
    if-eqz v11, :cond_0

    .line 370
    iget-wide v12, v11, Lcom/opera/max/sdk/traffic/TrafficEntry;->saveBytes:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v11    # "entry":Lcom/opera/max/sdk/traffic/TrafficEntry;
    :cond_0
    :goto_0
    const-string v3, "DataSavingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "by UID savedBytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-wide v12

    .line 372
    :catch_0
    move-exception v2

    .line 373
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "DataSavingHelper"

    const-string v4, "Exception occured when get  saved data by UID"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSavedBytesForAllUid(JJ)J
    .locals 17
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 338
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    .line 339
    const-string v2, "DataSavingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "endTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    if-eqz v2, :cond_1

    .line 342
    :try_start_0
    const-string v2, "DataSavingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to get saved data for all UID + mCurrentIMSI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    const/4 v8, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v8}, Lcom/opera/max/sdk/traffic/ITrafficService;->getTrafficSummaryForAllUids(Ljava/lang/String;JJZ)Ljava/util/Map;

    move-result-object v15

    .line 345
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/opera/max/sdk/traffic/TrafficEntry;>;"
    if-eqz v15, :cond_0

    .line 346
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v11, v2, [Lcom/opera/max/sdk/traffic/TrafficEntry;

    .line 347
    .local v11, "entries":[Lcom/opera/max/sdk/traffic/TrafficEntry;
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 348
    move-object v9, v11

    .local v9, "arr$":[Lcom/opera/max/sdk/traffic/TrafficEntry;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v12, v9, v13

    .line 349
    .local v12, "entry":Lcom/opera/max/sdk/traffic/TrafficEntry;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    iget-wide v4, v12, Lcom/opera/max/sdk/traffic/TrafficEntry;->saveBytes:J

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    .line 348
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 352
    .end local v9    # "arr$":[Lcom/opera/max/sdk/traffic/TrafficEntry;
    .end local v11    # "entries":[Lcom/opera/max/sdk/traffic/TrafficEntry;
    .end local v12    # "entry":Lcom/opera/max/sdk/traffic/TrafficEntry;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :cond_0
    const-string v2, "DataSavingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSavedBytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/opera/max/sdk/traffic/TrafficEntry;>;"
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    return-wide v2

    .line 353
    :catch_0
    move-exception v10

    .line 354
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "DataSavingHelper"

    const-string v3, "Exception occured when get all saved data"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public isSavingServiceBound()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerSavingStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/opera/max/sdk/saving/IStateListener;

    .prologue
    .line 192
    iget-boolean v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mStateListenerRegistered:Z

    if-eqz v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    invoke-interface {v1, p1}, Lcom/opera/max/sdk/saving/ISavingService;->registerStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mStateListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerServiceConnectionListener(Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;)V
    .locals 1
    .param p1, "savingServiceConnectionListener"    # Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    .param p2, "trafficServiceConnectionListener"    # Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public setCurrentIMSI(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentIMSI"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setIMSIForTrafficService()V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    if-nez v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->getDefaultDataIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/opera/max/sdk/traffic/ITrafficService;->setImsi(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startSaving()V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    if-eqz v1, :cond_0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    invoke-interface {v1}, Lcom/opera/max/sdk/saving/ISavingService;->startSaving()V

    .line 271
    const-string v1, "DataSavingHelper"

    const-string v2, "startSaving "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSavingHelper"

    const-string v2, "exception happen when start saving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "DataSavingHelper"

    const-string v2, "mSavingService is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopSaving()V
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    if-eqz v1, :cond_0

    .line 284
    :try_start_0
    const-string v1, "DataSavingHelper"

    const-string v2, "stopSaving "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    invoke-interface {v1}, Lcom/opera/max/sdk/saving/ISavingService;->stopSaving()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSavingHelper"

    const-string v2, "exception happen when sttop saving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "DataSavingHelper"

    const-string v2, "mSavingService is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unRegisterServiceConnectionListener(Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;)V
    .locals 1
    .param p1, "savingServiceConnectionListener"    # Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    .param p2, "trafficServiceConnectionListener"    # Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public unregisterSavingStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/opera/max/sdk/saving/IStateListener;

    .prologue
    .line 207
    iget-boolean v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mStateListenerRegistered:Z

    if-nez v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    invoke-interface {v1, p1}, Lcom/opera/max/sdk/saving/ISavingService;->unregisterStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mStateListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
