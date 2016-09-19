.class public Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDeviceInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataMonitor:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;

.field private mDevice:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

.field private mWifiApData:Landroid/widget/TextView;

.field private mWifiApDataText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDataMonitor:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;

    .line 53
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->updateRestData()V

    return-void
.end method

.method private convertMilsToHHMMSS(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 104
    const-wide/16 v8, 0xe10

    div-long v0, p1, v8

    .line 105
    .local v0, "hour":J
    const-wide/16 v8, 0xe10

    rem-long v2, p1, v8

    .line 106
    .local v2, "hour_rest":J
    const-wide/16 v8, 0x3c

    div-long v4, v2, v8

    .line 107
    .local v4, "min":J
    const-wide/16 v8, 0x3c

    rem-long v6, v2, v8

    .line 109
    .local v6, "sec":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private updateRestData()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mWifiApData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mWifiApDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDataMonitor:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDataMonitor:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->pause()V

    .line 98
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 99
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, 0x3e8

    const v8, 0x7f0d055e

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "dateFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040242

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 62
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->setView(Landroid/view/View;)V

    .line 63
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->setInverseBackgroundForced(Z)V

    .line 65
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v4}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    const v4, 0x7f0d055c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v4, 0x7f0d055d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mContext:Landroid/content/Context;

    .line 71
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v6}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v10

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "timeFormat":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v6}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v10

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "mFormat":Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    :cond_0
    const v4, 0x7f0d055f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->convertMilsToHHMMSS(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v4, 0x7f0d0560

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mWifiApData:Landroid/widget/TextView;

    .line 87
    const v4, 0x7f0d0561

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mWifiApDataText:Landroid/widget/TextView;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->updateRestData()V

    .line 90
    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0829

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method
